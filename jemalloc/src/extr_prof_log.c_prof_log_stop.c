
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int tsd_t ;
struct prof_emitter_cb_arg_s {int fd; int ret; } ;
typedef int emitter_t ;
struct TYPE_4__ {char* member_2; int member_4; int member_3; struct prof_emitter_cb_arg_s* member_1; int member_0; } ;
typedef TYPE_1__ buf_writer_arg_t ;


 int PROF_LOG_STOP_BUFSIZE ;
 int TSDN_NULL ;
 int abort () ;
 int arena_get (int ,int ,int) ;
 int buf_writer_flush (TYPE_1__*) ;
 int buffered_write_cb ;
 int ckh_delete (int *,int *) ;
 scalar_t__ close (int) ;
 int creat (int ,int) ;
 int emitter_begin (int *) ;
 int emitter_end (int *) ;
 int emitter_init (int *,int ,int ,TYPE_1__*) ;
 int emitter_output_json_compact ;
 int errno ;
 scalar_t__ iallocztm (int *,int ,int ,int,int *,int,int ,int) ;
 int idalloctm (int *,char*,int *,int *,int,int) ;
 int * log_alloc_first ;
 int * log_alloc_last ;
 int * log_bt_first ;
 scalar_t__ log_bt_index ;
 int * log_bt_last ;
 int log_bt_node_set ;
 int log_filename ;
 int log_mtx ;
 int log_tables_initialized ;
 int * log_thr_first ;
 scalar_t__ log_thr_index ;
 int * log_thr_last ;
 int log_thr_node_set ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int malloc_printf (char*,int ,int ) ;
 scalar_t__ opt_abort ;
 int opt_prof ;
 int prof_booted ;
 int prof_emitter_write_cb ;
 scalar_t__ prof_log_dummy ;
 int prof_log_emit_allocs (int *,int *) ;
 int prof_log_emit_metadata (int *) ;
 int prof_log_emit_threads (int *,int *) ;
 int prof_log_emit_traces (int *,int *) ;
 scalar_t__ prof_logging_state ;
 scalar_t__ prof_logging_state_dumping ;
 scalar_t__ prof_logging_state_started ;
 scalar_t__ prof_logging_state_stopped ;
 int sz_size2index (int ) ;
 int * tsdn_tsd (int *) ;

bool
prof_log_stop(tsdn_t *tsdn) {
 if (!opt_prof || !prof_booted) {
  return 1;
 }

 tsd_t *tsd = tsdn_tsd(tsdn);
 malloc_mutex_lock(tsdn, &log_mtx);

 if (prof_logging_state != prof_logging_state_started) {
  malloc_mutex_unlock(tsdn, &log_mtx);
  return 1;
 }






 prof_logging_state = prof_logging_state_dumping;
 malloc_mutex_unlock(tsdn, &log_mtx);


 emitter_t emitter;



 int fd;







 fd = creat(log_filename, 0644);


 if (fd == -1) {
  malloc_printf("<jemalloc>: creat() for log file \"%s\" "
         " failed with %d\n", log_filename, errno);
  if (opt_abort) {
   abort();
  }
  return 1;
 }

 struct prof_emitter_cb_arg_s arg;
 arg.fd = fd;

 char *prof_log_stop_buf = (char *)iallocztm(tsdn,
     PROF_LOG_STOP_BUFSIZE, sz_size2index(PROF_LOG_STOP_BUFSIZE),
     0, ((void*)0), 1, arena_get(TSDN_NULL, 0, 1), 1);
 buf_writer_arg_t prof_log_stop_buf_arg = {prof_emitter_write_cb, &arg,
     prof_log_stop_buf, PROF_LOG_STOP_BUFSIZE - 1, 0};


 emitter_init(&emitter, emitter_output_json_compact,
     buffered_write_cb, &prof_log_stop_buf_arg);

 emitter_begin(&emitter);
 prof_log_emit_metadata(&emitter);
 prof_log_emit_threads(tsd, &emitter);
 prof_log_emit_traces(tsd, &emitter);
 prof_log_emit_allocs(tsd, &emitter);
 emitter_end(&emitter);

 buf_writer_flush(&prof_log_stop_buf_arg);
 idalloctm(tsdn, prof_log_stop_buf, ((void*)0), ((void*)0), 1, 1);


 if (log_tables_initialized) {
  ckh_delete(tsd, &log_bt_node_set);
  ckh_delete(tsd, &log_thr_node_set);
 }
 log_tables_initialized = 0;
 log_bt_index = 0;
 log_thr_index = 0;
 log_bt_first = ((void*)0);
 log_bt_last = ((void*)0);
 log_thr_first = ((void*)0);
 log_thr_last = ((void*)0);
 log_alloc_first = ((void*)0);
 log_alloc_last = ((void*)0);

 malloc_mutex_lock(tsdn, &log_mtx);
 prof_logging_state = prof_logging_state_stopped;
 malloc_mutex_unlock(tsdn, &log_mtx);






 return close(fd) || arg.ret == -1;
}

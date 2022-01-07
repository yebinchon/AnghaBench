
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 scalar_t__ PROF_DUMP_FILENAME_LEN ;
 int log_filename ;
 int log_mtx ;
 int log_seq ;
 int log_start_timestamp ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int nstime_update (int *) ;
 int opt_prof ;
 int prof_booted ;
 int prof_get_default_filename (int *,int ,int ) ;
 scalar_t__ prof_logging_state ;
 scalar_t__ prof_logging_state_started ;
 scalar_t__ prof_logging_state_stopped ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

bool
prof_log_start(tsdn_t *tsdn, const char *filename) {
 if (!opt_prof || !prof_booted) {
  return 1;
 }

 bool ret = 0;

 malloc_mutex_lock(tsdn, &log_mtx);

 if (prof_logging_state != prof_logging_state_stopped) {
  ret = 1;
 } else if (filename == ((void*)0)) {

  prof_get_default_filename(tsdn, log_filename, log_seq);
  log_seq++;
  prof_logging_state = prof_logging_state_started;
 } else if (strlen(filename) >= PROF_DUMP_FILENAME_LEN) {
  ret = 1;
 } else {
  strcpy(log_filename, filename);
  prof_logging_state = prof_logging_state_started;
 }

 if (!ret) {
  nstime_update(&log_start_timestamp);
 }

 malloc_mutex_unlock(tsdn, &log_mtx);

 return ret;
}

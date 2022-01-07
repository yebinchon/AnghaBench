
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_4__ {char* thr_uid; char* name; struct TYPE_4__* next; } ;
typedef TYPE_1__ prof_thr_node_t ;
typedef int emitter_t ;


 int emitter_json_array_end (int *) ;
 int emitter_json_array_kv_begin (int *,char*) ;
 int emitter_json_kv (int *,char*,int ,char**) ;
 int emitter_json_object_begin (int *) ;
 int emitter_json_object_end (int *) ;
 int emitter_type_string ;
 int emitter_type_uint64 ;
 int idalloctm (int ,TYPE_1__*,int *,int *,int,int) ;
 TYPE_1__* log_thr_first ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_log_emit_threads(tsd_t *tsd, emitter_t *emitter) {
 emitter_json_array_kv_begin(emitter, "threads");
 prof_thr_node_t *thr_node = log_thr_first;
 prof_thr_node_t *thr_old_node;
 while (thr_node != ((void*)0)) {
  emitter_json_object_begin(emitter);

  emitter_json_kv(emitter, "thr_uid", emitter_type_uint64,
      &thr_node->thr_uid);

  char *thr_name = thr_node->name;

  emitter_json_kv(emitter, "thr_name", emitter_type_string,
      &thr_name);

  emitter_json_object_end(emitter);
  thr_old_node = thr_node;
  thr_node = thr_node->next;
  idalloctm(tsd_tsdn(tsd), thr_old_node, ((void*)0), ((void*)0), 1, 1);
 }
 emitter_json_array_end(emitter);
}

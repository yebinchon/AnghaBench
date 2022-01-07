
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_4__ {struct TYPE_4__* next; int usize; int free_time_ns; int alloc_time_ns; int free_bt_ind; int alloc_bt_ind; int free_thr_ind; int alloc_thr_ind; } ;
typedef TYPE_1__ prof_alloc_node_t ;
typedef int emitter_t ;


 int emitter_json_array_end (int *) ;
 int emitter_json_array_kv_begin (int *,char*) ;
 int emitter_json_kv (int *,char*,int ,int *) ;
 int emitter_json_object_begin (int *) ;
 int emitter_json_object_end (int *) ;
 int emitter_type_size ;
 int emitter_type_uint64 ;
 int idalloctm (int ,TYPE_1__*,int *,int *,int,int) ;
 TYPE_1__* log_alloc_first ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_log_emit_allocs(tsd_t *tsd, emitter_t *emitter) {
 emitter_json_array_kv_begin(emitter, "allocations");
 prof_alloc_node_t *alloc_node = log_alloc_first;
 prof_alloc_node_t *alloc_old_node;
 while (alloc_node != ((void*)0)) {
  emitter_json_object_begin(emitter);

  emitter_json_kv(emitter, "alloc_thread", emitter_type_size,
      &alloc_node->alloc_thr_ind);

  emitter_json_kv(emitter, "free_thread", emitter_type_size,
      &alloc_node->free_thr_ind);

  emitter_json_kv(emitter, "alloc_trace", emitter_type_size,
      &alloc_node->alloc_bt_ind);

  emitter_json_kv(emitter, "free_trace", emitter_type_size,
      &alloc_node->free_bt_ind);

  emitter_json_kv(emitter, "alloc_timestamp",
      emitter_type_uint64, &alloc_node->alloc_time_ns);

  emitter_json_kv(emitter, "free_timestamp", emitter_type_uint64,
      &alloc_node->free_time_ns);

  emitter_json_kv(emitter, "usize", emitter_type_uint64,
      &alloc_node->usize);

  emitter_json_object_end(emitter);

  alloc_old_node = alloc_node;
  alloc_node = alloc_node->next;
  idalloctm(tsd_tsdn(tsd), alloc_old_node, ((void*)0), ((void*)0), 1,
      1);
 }
 emitter_json_array_end(emitter);
}

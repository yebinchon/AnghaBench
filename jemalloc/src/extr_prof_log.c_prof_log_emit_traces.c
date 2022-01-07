
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_5__ {size_t len; int * vec; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__ bt; } ;
typedef TYPE_2__ prof_bt_node_t ;
typedef int emitter_t ;
typedef int buf ;


 int emitter_json_array_begin (int *) ;
 int emitter_json_array_end (int *) ;
 int emitter_json_array_kv_begin (int *,char*) ;
 int emitter_json_value (int *,int ,char**) ;
 int emitter_type_string ;
 int idalloctm (int ,TYPE_2__*,int *,int *,int,int) ;
 TYPE_2__* log_bt_first ;
 int malloc_snprintf (char*,size_t,char*,int ) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_log_emit_traces(tsd_t *tsd, emitter_t *emitter) {
 emitter_json_array_kv_begin(emitter, "stack_traces");
 prof_bt_node_t *bt_node = log_bt_first;
 prof_bt_node_t *bt_old_node;




 char buf[2 * sizeof(intptr_t) + 3];
 size_t buf_sz = sizeof(buf);
 while (bt_node != ((void*)0)) {
  emitter_json_array_begin(emitter);
  size_t i;
  for (i = 0; i < bt_node->bt.len; i++) {
   malloc_snprintf(buf, buf_sz, "%p", bt_node->bt.vec[i]);
   char *trace_str = buf;
   emitter_json_value(emitter, emitter_type_string,
       &trace_str);
  }
  emitter_json_array_end(emitter);

  bt_old_node = bt_node;
  bt_node = bt_node->next;
  idalloctm(tsd_tsdn(tsd), bt_old_node, ((void*)0), ((void*)0), 1, 1);
 }
 emitter_json_array_end(emitter);
}

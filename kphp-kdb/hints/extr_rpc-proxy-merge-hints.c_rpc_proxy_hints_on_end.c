
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hints_extra {int limit; scalar_t__ op; scalar_t__ sent_op; } ;
struct gather {int tot_num; struct hints_extra* extra; TYPE_1__* List; } ;
struct TYPE_5__ {int rating; int object_id; int type; } ;
typedef TYPE_2__ gh_entry_t ;
struct TYPE_4__ {scalar_t__ bytes; int data; } ;


 int GH_total ;
 int TL_VECTOR_TOTAL ;
 int clear_gather_heap () ;
 int free (struct hints_extra*) ;
 int gather_heap_advance () ;
 int gather_heap_insert (int ,scalar_t__) ;
 TYPE_2__* get_gather_heap_head () ;
 int merge_delete (struct gather*) ;
 scalar_t__ merge_init_response (struct gather*) ;
 int received_bad_answers ;
 int tl_store_double (int ) ;
 int tl_store_end () ;
 int* tl_store_get_ptr (int) ;
 int tl_store_int (int ) ;
 int vkprintf (int,char*,int,scalar_t__) ;

void rpc_proxy_hints_on_end (struct gather *G) {
  struct hints_extra *extra = G->extra;
  clear_gather_heap ();
  int i;
  for (i = 0; i < G->tot_num; i++) {
    if (G->List[i].bytes >= 0) {
      int res = gather_heap_insert (G->List[i].data, G->List[i].bytes);
      if (res < 0) {
        received_bad_answers++;
      }
    } else {
      vkprintf (4, "Dropping result %d (num = %d)\n", i, G->List[i].bytes);
    }
  }

  if (merge_init_response (G)) {
    tl_store_int (TL_VECTOR_TOTAL);
    tl_store_int (GH_total);
    int *x = tl_store_get_ptr (4);

    for (i = 0; i < extra->limit; i++) {
      gh_entry_t *H = get_gather_heap_head ();
      if (H == ((void*)0)) {
        break;
      }

      tl_store_int (H->type);
      tl_store_int (H->object_id);
      if (extra->op == extra->sent_op) {
        tl_store_double (H->rating);
      }

      gather_heap_advance ();
    }

    *x = i;
    tl_store_end ();
  }

  free (G->extra);
  merge_delete (G);
  return;
}

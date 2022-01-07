
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct targ_extra {int mode; int limit; } ;
struct gather {int tot_num; TYPE_1__* List; struct targ_extra* extra; } ;
struct TYPE_5__ {int views; int ad_id; } ;
typedef TYPE_2__ gh_entry_t ;
struct TYPE_4__ {scalar_t__ bytes; int data; } ;


 int GH_total ;
 int TL_VECTOR_TOTAL ;
 int clear_gather_heap (int) ;
 int fprintf (int ,char*,int,scalar_t__) ;
 int gather_heap_advance () ;
 int gather_heap_insert (int ,scalar_t__) ;
 TYPE_2__* get_gather_heap_head () ;
 int merge_delete (struct gather*) ;
 scalar_t__ merge_init_response (struct gather*) ;
 int received_bad_answers ;
 int stderr ;
 int tl_store_end () ;
 int* tl_store_get_ptr (int) ;
 int tl_store_int (int ) ;
 int verbosity ;
 int zfree (struct targ_extra*,int) ;

void sum_search_on_end (struct gather *G) {
  struct targ_extra *e = G->extra;
  if (merge_init_response (G) < 0) {
    zfree (e, sizeof (*e));
    merge_delete (G);
    return;
  }

  int Q_order = (e->mode & 7) | 16;
  if (!(Q_order & 1)) {
    Q_order |= 8;
  }
  clear_gather_heap (Q_order);

  int i;
  for (i = 0; i < G->tot_num; i++) if (G->List[i].bytes >= 0) {
    int res = gather_heap_insert (G->List[i].data, G->List[i].bytes);
    if (res < 0) {
      received_bad_answers ++;
    }
  } else {
    if (verbosity >= 4) {
      fprintf (stderr, "Dropping result %d (num = %d)\n", i, G->List[i].bytes);
    }
  }

  tl_store_int (TL_VECTOR_TOTAL);
  tl_store_int (GH_total);
  int *cur = tl_store_get_ptr (4);
  *cur = 0;


  while (1) {
    if (*cur >= e->limit) { break; }
    gh_entry_t *H = get_gather_heap_head ();
    if (!H) { break; }

    tl_store_int (H->ad_id);
    if (!(Q_order & 8)) {
      tl_store_int (H->views);
    }
    (*cur) ++;
    gather_heap_advance ();
  }
  tl_store_end ();
  zfree (e, sizeof (*e));
  merge_delete (G);
  return;
}

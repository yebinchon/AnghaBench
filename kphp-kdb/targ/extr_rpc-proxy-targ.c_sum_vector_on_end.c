
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct targ_extra {int mode; int limit; } ;
struct gather {int tot_num; TYPE_1__* List; struct targ_extra* extra; } ;
struct TYPE_5__ {scalar_t__ ad_id; scalar_t__ views; } ;
typedef TYPE_2__ gh_entry_t ;
struct TYPE_4__ {scalar_t__ bytes; int data; } ;


 int GH_total ;
 int MAX_RES ;
 scalar_t__* R ;
 int TL_VECTOR_TOTAL ;
 int clear_gather_heap (int) ;
 int cmp ;
 int cmpd ;
 int fprintf (int ,char*,int,scalar_t__) ;
 int gather_heap_advance () ;
 int gather_heap_insert (int ,scalar_t__) ;
 TYPE_2__* get_gather_heap_head () ;
 int merge_delete (struct gather*) ;
 scalar_t__ merge_init_response (struct gather*) ;
 int qsort (scalar_t__*,int,int,int ) ;
 int received_bad_answers ;
 int stderr ;
 int tl_store_end () ;
 int tl_store_int (int) ;
 int tl_store_raw_data (scalar_t__*,int) ;
 int verbosity ;
 int zfree (struct targ_extra*,int) ;

void sum_vector_on_end (struct gather *G) {
  struct targ_extra *e = G->extra;
  if (merge_init_response (G) < 0) {
    zfree (e, sizeof (*e));
    merge_delete (G);
    return;
  }

  int Q_order = e->mode & 7;
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
  int cur = -2;

  while (1) {
    gh_entry_t *H = get_gather_heap_head ();
    if (!H) { break; }

    if (cur >= 0 && H->ad_id == R[cur]) {
      R[cur + 1] += H->views;
    } else {
      cur += 2;
      R[cur] = H->ad_id;
      R[cur + 1] = H->views;
      if (cur >= MAX_RES) { break; }
    }
    gather_heap_advance ();
  }

  if (cur < 0) {
    tl_store_int (0);
  } else {
    cur += 2;
    if (e->mode & 1) {
      qsort (R, cur / 2, 8, (e->mode & 4) ? cmp : cmpd);
    }
    cur /= 2;
    if (cur > e->limit) {
      cur = e->limit;
    }
    tl_store_int (cur);
    tl_store_raw_data (R, cur * 8);
  }
  tl_store_end ();
  zfree (e, sizeof (*e));
  merge_delete (G);
  return;
}

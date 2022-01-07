
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct search_extra {int mode; int limit; scalar_t__ attempt; } ;
struct gather {int tot_num; struct search_extra* extra; TYPE_1__* List; scalar_t__ saved_query_len; } ;
struct TYPE_5__ {long long hash; int owner_id; int item_id; int value; } ;
typedef TYPE_2__ gh_entry_t ;
struct TYPE_4__ {scalar_t__ bytes; int data; } ;


 int FLAG_GROUP_HASH ;
 int FLAG_RETRY_SEARCH ;
 int FLAG_SORT ;
 int GH_n ;
 int GH_total ;
 int TL_SEARCH_RESULT ;
 scalar_t__ check_resend (struct gather*) ;
 int clear_gather_heap (int) ;
 long double cum_hash_ratio ;
 int fprintf (int ,char*,int,scalar_t__) ;
 int free (struct search_extra*) ;
 int gather_heap_advance () ;
 int gather_heap_insert (int ,scalar_t__) ;
 TYPE_2__* get_gather_heap_head () ;
 int hashset_init (int) ;
 int hashset_insert (long long) ;
 int merge_delete (struct gather*) ;
 int merge_init_response (struct gather*) ;
 int received_bad_answers ;
 int stderr ;
 int tl_store_end () ;
 int* tl_store_get_ptr (int) ;
 int tl_store_int (int) ;
 int tl_store_long (long long) ;
 int tot_hash_ratio ;
 int verbosity ;

void rpc_proxy_search_on_end (struct gather *G) {
  struct search_extra *extra = G->extra;
  int Q_order = extra->mode;
  int Q_limit = extra->limit;
  clear_gather_heap (Q_order);
  int i;
  if ((Q_order & FLAG_RETRY_SEARCH) && G->saved_query_len && extra->attempt == 0 && check_resend (G) > 0) {
    extra->attempt ++;
    return;
  }
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

  if (!merge_init_response (G)) {
    free (G->extra);
    merge_delete (G);
    return;
  }

  tl_store_int (TL_SEARCH_RESULT);
  tl_store_int (GH_n);
  tl_store_int (GH_total);
  int *x = tl_store_get_ptr (4);

  if (Q_order & FLAG_GROUP_HASH) {
    hashset_init (Q_limit);
  }
  int tot_hash_dups = 0;

  for (i = 0; i < Q_limit; ) {
    gh_entry_t *H = get_gather_heap_head ();
    if (!H) { break; }
    if (Q_order & FLAG_GROUP_HASH) {
      long long hc = H->hash;
      if (!hashset_insert (hc)) {

        tot_hash_dups++;
        gather_heap_advance ();
        continue;
      }
    }

    if (GH_n == 2) {
      tl_store_int (H->owner_id);
    }
    tl_store_int (H->item_id);
    if (Q_order & FLAG_SORT) {
      tl_store_int (H->value);
    }
    if (Q_order & FLAG_GROUP_HASH) {
      tl_store_long (H->hash);
    }
    gather_heap_advance ();
    i++;
  }

  if ((Q_order & FLAG_GROUP_HASH) && i) {
    long double hash_ratio = ((long double) (i + tot_hash_dups)) / i;
    cum_hash_ratio += hash_ratio;
    tot_hash_ratio++;
  }

  *x = i;
  tl_store_end ();
  free (G->extra);
  merge_delete (G);
  return;
}

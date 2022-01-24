#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct search_extra {int mode; int limit; scalar_t__ attempt; } ;
struct gather {int tot_num; struct search_extra* extra; TYPE_1__* List; scalar_t__ saved_query_len; } ;
struct TYPE_5__ {long long hash; int owner_id; int item_id; int value; } ;
typedef  TYPE_2__ gh_entry_t ;
struct TYPE_4__ {scalar_t__ bytes; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FLAG_GROUP_HASH ; 
 int FLAG_RETRY_SEARCH ; 
 int FLAG_SORT ; 
 int GH_n ; 
 int GH_total ; 
 int TL_SEARCH_RESULT ; 
 scalar_t__ FUNC0 (struct gather*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 long double cum_hash_ratio ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct search_extra*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (long long) ; 
 int /*<<< orphan*/  FUNC9 (struct gather*) ; 
 int /*<<< orphan*/  FUNC10 (struct gather*) ; 
 int /*<<< orphan*/  received_bad_answers ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (long long) ; 
 int /*<<< orphan*/  tot_hash_ratio ; 
 int verbosity ; 

void FUNC15 (struct gather *G) {
  struct search_extra *extra = G->extra;
  int Q_order = extra->mode;
  int Q_limit = extra->limit;
  FUNC1 (Q_order);
  int i;
  if  ((Q_order & FLAG_RETRY_SEARCH) && G->saved_query_len && extra->attempt == 0 && FUNC0 (G) > 0) {
    extra->attempt ++;
    return;
  }
  for (i = 0; i < G->tot_num; i++) if (G->List[i].bytes >= 0) {
    int res = FUNC5 (G->List[i].data, G->List[i].bytes);
    if (res < 0) {
      received_bad_answers ++;
    }
//    assert (r >= 0);
  } else {
    if (verbosity >= 4) {
      FUNC2 (stderr, "Dropping result %d (num = %ld)\n", i, G->List[i].bytes);
    }
  }

  if (!FUNC10 (G)) {
    FUNC3 (G->extra);
    FUNC9 (G);
    return;
  }

  FUNC13 (TL_SEARCH_RESULT);
  FUNC13 (GH_n);
  FUNC13 (GH_total);
  int *x = FUNC12 (4);

  if (Q_order & FLAG_GROUP_HASH) {
    FUNC7 (Q_limit);
  }
  int tot_hash_dups = 0;

  for (i = 0; i < Q_limit; ) {
    gh_entry_t *H = FUNC6 ();
    if (!H) { break; }
    if (Q_order & FLAG_GROUP_HASH) {
      long long hc = H->hash;
      if (!FUNC8 (hc)) {
        /* skiping duplicate */
        tot_hash_dups++;
        FUNC4 ();
        continue;
      }
    }

    if (GH_n == 2) {
      FUNC13 (H->owner_id);
    }
    FUNC13 (H->item_id);
    if (Q_order & FLAG_SORT) {
      FUNC13 (H->value);
    }
    if (Q_order & FLAG_GROUP_HASH) {
      FUNC14 (H->hash);
    }
    FUNC4 ();
    i++;
  }

  if ((Q_order & FLAG_GROUP_HASH) && i) {
    long double hash_ratio = ((long double) (i + tot_hash_dups)) / i;
    cum_hash_ratio += hash_ratio;
    tot_hash_ratio++;
  }

  *x = i;
  FUNC11 ();
  FUNC3 (G->extra);
  FUNC9 (G);
  return;
}
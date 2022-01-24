#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int phrases_cnt; TYPE_2__* phrases; } ;
typedef  TYPE_1__ watchcat_query_t ;
struct TYPE_12__ {int words; int /*<<< orphan*/ * H; scalar_t__ minus_flag; } ;
typedef  TYPE_2__ watchcat_query_phrase_t ;
struct TYPE_13__ {long long id; scalar_t__ vn; int /*<<< orphan*/  keys; TYPE_1__* query; } ;
typedef  TYPE_3__ watchcat ;

/* Variables and functions */
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  h_watchcat ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,long long*) ; 
 int my_verbosity ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

inline watchcat *FUNC8 (long long id, watchcat_query_t *query) {
  watchcat **b;
  b = (watchcat **)FUNC5 (&h_watchcat, &id);
  if (*b == (watchcat *)&id) {
    watchcat *w = FUNC0();
    w->id = id;
    w->query = query;

    FUNC7 (&w->keys);

    if (my_verbosity > 1) {
      FUNC2 (stderr, "watchcat_created id = %lld\n", id);
    }

    int i;
    watchcat *bq = NULL;

    int done = 0;
    for (i = 0; i < query->phrases_cnt && !done; i++) {
      watchcat_query_phrase_t *phrase = &query->phrases[i];
      if (phrase->minus_flag) {
        continue;
      }
      int j;
      for (j = 0; j < phrase->words && !done; j++) {
        watchcat *q = FUNC4 (phrase->H[j], 1);
        if (bq == NULL || bq->vn > q->vn) {
          bq = q;
        }
        if (bq->vn == 0) {
          done = 1;
        }
      }
    }

    FUNC1 (bq != NULL);
    if (my_verbosity > 1) {
      FUNC2 (stderr, "added to %lld queue\n", bq->id);
    }
    FUNC6 (bq, w);

    *b = w;
  } else {
    FUNC3 (query);
  }
  return *b;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* root; } ;
struct TYPE_6__ {int /*<<< orphan*/  dtype; } ;
struct TYPE_7__ {TYPE_1__ tok; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_QUERY_LEN ; 
 size_t MAX_STATS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (TYPE_4__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char**,int*,int) ; 
 TYPE_4__* stat_expr ; 
 char* stat_queries_file ; 
 size_t* stat_type ; 
 size_t stats_cnt ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (char*) ; 
 TYPE_2__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * types ; 
 int /*<<< orphan*/  v_int ; 

void FUNC10 (void) {
  if (stat_queries_file == NULL) {
    return;
  }

  FILE *f = FUNC4 (stat_queries_file, "r");
  if (f == NULL) {
    FUNC5 (stderr, "Can't open file %s with queries.\n", stat_queries_file);
    FUNC1 (1);
  }
  char query[MAX_QUERY_LEN];
  for (stats_cnt = 0; stats_cnt < MAX_STATS; stats_cnt++) {
    if (FUNC3 (query, MAX_QUERY_LEN, f) == NULL) {
      break;
    }

    if (FUNC8 (query) <= 1) {
      stats_cnt--;
      continue;
    }
    query[FUNC8 (query) - 1] = 0;

    static char *qs[3];
    int qn;
    FUNC7 (query, qs, &qn, 2);
    if (qn == 0) {
      FUNC5 (stderr, "Too much commas in query %s.\n", query);
      FUNC1 (1);
    }

    stat_type[stats_cnt] = FUNC6 (qs[0]);
    if (stat_type[stats_cnt] == 0) {
      FUNC5 (stderr, "Can't find type [%s].\n", qs[0]);
      FUNC1 (1);
    }

    char *err = FUNC2 (&stat_expr[stats_cnt], qs[1], &types[stat_type[stats_cnt]]);
    if (err != NULL) {
      FUNC5 (stderr, "Cannot compile expression [%s] : error [%s]\n", qs[1], err);
      FUNC1 (1);
    }

    if (FUNC0(stat_expr[stats_cnt].root->tok.dtype)) {
      FUNC5 (stderr, "Cannot convert result of query[%s] (string) to int\n", qs[1]);
      FUNC1 (1);
    }
    stat_expr[stats_cnt].root = FUNC9 (stat_expr[stats_cnt].root, v_int);
  }
  if (stats_cnt == MAX_STATS) {
    FUNC5 (stderr, "Max number of stat_queries %d exceeded. Aborting.\n", MAX_STATS);
    FUNC1 (1);
  }
}
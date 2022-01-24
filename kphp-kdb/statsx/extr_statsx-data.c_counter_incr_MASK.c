#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_stats_visitor64 {long long cnt_id; int user_id; } ;
struct lev_stats_visitor {int user_id; } ;
struct counter {int type; int unique_visitors; struct counter* commit_next; int /*<<< orphan*/  views_uncommitted; int /*<<< orphan*/  visitors; int /*<<< orphan*/  deletes; int /*<<< orphan*/  views; } ;

/* Variables and functions */
 scalar_t__ LEV_STATS_VISITOR ; 
 scalar_t__ LEV_STATS_VISITOR_64 ; 
 int MAX_SUBCNT ; 
 void* FUNC0 (scalar_t__,int,long long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct counter* counters_commit_head ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct counter* FUNC3 (long long,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  mode_ignore_user_id ; 
 scalar_t__ monthly_stat ; 
 scalar_t__ now ; 
 int FUNC5 (struct counter*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct counter*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ today_start ; 
 int /*<<< orphan*/  tot_deletes ; 
 int /*<<< orphan*/  tot_views ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int verbosity ; 

int FUNC9 (long long counter_id, int user_id, int replaying, int op, int subcnt) {
  int subcnt_value = 0;
  if (verbosity >= 4) {
    FUNC2 (stderr, "counter_incr (%lld, %d, %d, %d, %d)\n", counter_id, user_id, replaying, op, subcnt);
  }
  
  struct counter *C = FUNC3 (counter_id, replaying ? 3 : 1);
  if (verbosity >= 3) {
    FUNC2 (stderr, "Got counter\n");
  }

  if (!C) { return -1; }
  FUNC6 (C);


  if (verbosity >= 3) {
    FUNC2 (stderr, "Counter type is %d\n", C->type);
  }

  //if (-1 > subcnt || subcnt >= types[C->type].field_number) {
  if (-1 > subcnt || subcnt >= MAX_SUBCNT) {
    if (verbosity >= 1) {
      FUNC2 (stderr, "Unknown subcounter (%d). Skipping.\n", subcnt);
    }
    subcnt = -1;
  }
  
  if (op == 0) {  
    tot_views++;
  } else {
    tot_deletes++;
  }
  
  if (subcnt == -1) {
    if (op == 0) {
      C->views++;  
    } else {
      C->deletes++;
    }
  } else {
    FUNC1 (subcnt < MAX_SUBCNT);
    
    if (verbosity >= 4) {
      FUNC2 (stderr, "incrementing subcounter... ");
    }
    subcnt_value = FUNC5(C, subcnt, (op == 0) ? 1 : (-1));
    
    if (verbosity >= 4) {
      FUNC2 (stderr, "done\n");
    }
  }

  if (subcnt != -1 || !FUNC8 (C->visitors, user_id)) {
    if (subcnt == -1) {
      if ((now >= today_start && !mode_ignore_user_id) || monthly_stat)  {
        //assert (!tree_lookup (C->visitors, user_id));
        //assert (check_tree (C->visitors));
        C->visitors = FUNC7 (C->visitors, user_id, FUNC4());
      }
      C->unique_visitors++;
    }

    if (!replaying) {
      if (verbosity >= 4) {
        FUNC2 (stderr, "creating logevent\n");
      }
      if (counter_id == (int)counter_id) {
        struct lev_stats_visitor *LV = 
          FUNC0 (LEV_STATS_VISITOR + (op << 7) + subcnt + 1, sizeof (struct lev_stats_visitor), counter_id);
        LV->user_id = user_id;
      } else {
        struct lev_stats_visitor64 *LV = 
          FUNC0 (LEV_STATS_VISITOR_64 + (op << 7) + subcnt + 1, sizeof (struct lev_stats_visitor64), counter_id);
        LV->cnt_id = counter_id;
        LV->user_id = user_id;
      }
      if (verbosity >= 4) {
        FUNC2 (stderr, "finished creating logevent\n");
      }
    }
  } else if (!replaying && !C->views_uncommitted++) {
    C->commit_next = counters_commit_head;
    counters_commit_head = C;
  }
  if (subcnt == -1) {
    return C->unique_visitors;
  } else {
    return subcnt_value;
  }
}
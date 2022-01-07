
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_stats_visitor64 {long long cnt_id; int user_id; } ;
struct lev_stats_visitor {int user_id; } ;
struct counter {int type; int unique_visitors; struct counter* commit_next; int views_uncommitted; int visitors; int deletes; int views; } ;


 scalar_t__ LEV_STATS_VISITOR ;
 scalar_t__ LEV_STATS_VISITOR_64 ;
 int MAX_SUBCNT ;
 void* alloc_log_event (scalar_t__,int,long long) ;
 int assert (int) ;
 struct counter* counters_commit_head ;
 int fprintf (int ,char*,...) ;
 struct counter* get_counter_f (long long,int) ;
 int lrand48 () ;
 int mode_ignore_user_id ;
 scalar_t__ monthly_stat ;
 scalar_t__ now ;
 int packed_subcnt_increment (struct counter*,int,int) ;
 int set_perm (struct counter*) ;
 int stderr ;
 scalar_t__ today_start ;
 int tot_deletes ;
 int tot_views ;
 int tree_insert (int ,int,int ) ;
 int tree_lookup (int ,int) ;
 int verbosity ;

int counter_incr (long long counter_id, int user_id, int replaying, int op, int subcnt) {
  int subcnt_value = 0;
  if (verbosity >= 4) {
    fprintf (stderr, "counter_incr (%lld, %d, %d, %d, %d)\n", counter_id, user_id, replaying, op, subcnt);
  }

  struct counter *C = get_counter_f (counter_id, replaying ? 3 : 1);
  if (verbosity >= 3) {
    fprintf (stderr, "Got counter\n");
  }

  if (!C) { return -1; }
  set_perm (C);


  if (verbosity >= 3) {
    fprintf (stderr, "Counter type is %d\n", C->type);
  }


  if (-1 > subcnt || subcnt >= MAX_SUBCNT) {
    if (verbosity >= 1) {
      fprintf (stderr, "Unknown subcounter (%d). Skipping.\n", subcnt);
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
    assert (subcnt < MAX_SUBCNT);

    if (verbosity >= 4) {
      fprintf (stderr, "incrementing subcounter... ");
    }
    subcnt_value = packed_subcnt_increment(C, subcnt, (op == 0) ? 1 : (-1));

    if (verbosity >= 4) {
      fprintf (stderr, "done\n");
    }
  }

  if (subcnt != -1 || !tree_lookup (C->visitors, user_id)) {
    if (subcnt == -1) {
      if ((now >= today_start && !mode_ignore_user_id) || monthly_stat) {


        C->visitors = tree_insert (C->visitors, user_id, lrand48());
      }
      C->unique_visitors++;
    }

    if (!replaying) {
      if (verbosity >= 4) {
        fprintf (stderr, "creating logevent\n");
      }
      if (counter_id == (int)counter_id) {
        struct lev_stats_visitor *LV =
          alloc_log_event (LEV_STATS_VISITOR + (op << 7) + subcnt + 1, sizeof (struct lev_stats_visitor), counter_id);
        LV->user_id = user_id;
      } else {
        struct lev_stats_visitor64 *LV =
          alloc_log_event (LEV_STATS_VISITOR_64 + (op << 7) + subcnt + 1, sizeof (struct lev_stats_visitor64), counter_id);
        LV->cnt_id = counter_id;
        LV->user_id = user_id;
      }
      if (verbosity >= 4) {
        fprintf (stderr, "finished creating logevent\n");
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


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int priority; scalar_t__ op; int cur; } ;


 long long MAX_ITEM_ID ;
 long long MIN_ITEM_ID ;
 scalar_t__ Q_hash_group_mode ;
 TYPE_1__* Q_root ;
 int Q_words ;
 int R_tot ;
 int R_tot_groups ;
 long long advance_iterators (TYPE_1__*,long long) ;
 int assert (int ) ;
 int dump_query_tree (TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 TYPE_1__* optimize_query (TYPE_1__*) ;
 int postprocess_res () ;
 scalar_t__ prepare_query_iterators (TYPE_1__*) ;
 scalar_t__ qn_false ;
 int query_optimize_kill_dups () ;
 scalar_t__ reoptimize_flag ;
 int stderr ;
 scalar_t__ store_res (int ,int) ;
 int verbosity ;

int perform_ext_query (void) {
  long long item_id;

  if (verbosity > 1) {
    fprintf (stderr, "performing extended query: root=%p\n", Q_root);
    dump_query_tree (Q_root);
    fprintf (stderr, "\n");
  }

  assert (Q_root && !Q_words);
  query_optimize_kill_dups ();

  if (verbosity > 1) {
    fprintf (stderr, "after killing duplicate words: root=%p\n", Q_root);
    dump_query_tree (Q_root);
    fprintf (stderr, "\n");
  }

  reoptimize_flag = 0;
  if (prepare_query_iterators (Q_root) < 0) {
    return 0;
  }

  item_id = MIN_ITEM_ID;

  do {
    if (reoptimize_flag) {
      Q_root = optimize_query (Q_root);
      reoptimize_flag = 0;
      if (verbosity > 1) {
        fprintf (stderr, "query after optimization: root=%p\n", Q_root);
        dump_query_tree (Q_root);
        fprintf (stderr, "\n");
      }
    }

    if (Q_root->op == qn_false) {
      break;
    }

    item_id = advance_iterators (Q_root, item_id + 1);
    if (item_id == MAX_ITEM_ID) {
      break;
    }
  } while (store_res (Q_root->cur, Q_root->priority > 10 ? 10 : Q_root->priority));

  postprocess_res();

  return Q_hash_group_mode ? R_tot_groups : R_tot;

}

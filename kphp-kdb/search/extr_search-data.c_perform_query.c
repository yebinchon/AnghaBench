
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAG_PRIORITY_SORT_SEARCH ;
 scalar_t__ Q_hash_group_mode ;
 scalar_t__ Q_min_priority ;
 int Q_order ;
 scalar_t__ Q_root ;
 int Q_words ;
 int R_tot ;
 int R_tot_groups ;
 int Root ;
 int clear_res () ;
 int fast_intersection_query () ;
 int fprintf (int ,char*,scalar_t__) ;
 int free_all_list_decoders () ;
 scalar_t__ has_empty_range () ;
 int perform_ext_query () ;
 int postprocess_res () ;
 int priority_sort_query () ;
 int stderr ;
 scalar_t__ t_depth ;
 scalar_t__ tree_depth (int ,int ) ;
 int verbosity ;
 int vkprintf (int,char*,int) ;

int perform_query (void) {
  int i;
  clear_res ();

  if ((!Q_words && !Q_root) || has_empty_range () ) {
    return 0;
  }

  if (verbosity > 1 && t_depth < 0) {
    t_depth = tree_depth (Root, 0);
    fprintf (stderr, "tree depth = %d\n", t_depth);
  }

  if (Q_root) {
    Q_min_priority = 0;
    i = perform_ext_query ();
    free_all_list_decoders ();
    return i;
  }

  vkprintf (3, "Q_order = %x\n", Q_order);
  if (Q_order & FLAG_PRIORITY_SORT_SEARCH) {
    priority_sort_query ();
  } else {
    fast_intersection_query ();
  }

  free_all_list_decoders ();
  postprocess_res ();
  return Q_hash_group_mode ? R_tot_groups : R_tot;
}

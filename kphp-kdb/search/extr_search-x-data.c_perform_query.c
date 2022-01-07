
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_hash_group_mode ;
 int Q_words ;
 int R_tot ;
 int R_tot_groups ;
 int Root ;
 int clear_res () ;
 int free_all_list_decoders () ;
 scalar_t__ has_empty_range () ;
 int kprintf (char*,int) ;
 int postprocess_res () ;
 int ranking_query () ;
 int tree_depth (int ,int ) ;
 int verbosity ;

int perform_query (void) {
  clear_res ();

  if (!Q_words || has_empty_range () ) {
    return 0;
  }

  if (verbosity >= 3) {
    int t_depth = tree_depth (Root, 0);
    kprintf ("tree depth = %d\n", t_depth);
  }

  ranking_query ();

  free_all_list_decoders ();
  postprocess_res ();
  return Q_hash_group_mode ? R_tot_groups : R_tot;
}

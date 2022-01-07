
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_root ;
 int query_convert_to_cumulatative_expression (int ) ;
 int query_kill_duplicate_words (int ) ;
 scalar_t__ tot_query_nodes_kill_dup ;
 scalar_t__ tot_query_nodes_list ;

__attribute__((used)) static void query_optimize_kill_dups (void) {
  tot_query_nodes_kill_dup = tot_query_nodes_list = 0;
  query_convert_to_cumulatative_expression (Q_root);
  Q_root = query_kill_duplicate_words (Q_root);
}

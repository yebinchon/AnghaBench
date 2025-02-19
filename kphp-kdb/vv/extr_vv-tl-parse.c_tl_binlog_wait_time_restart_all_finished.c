
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binlog_wait_query {int (* on_complete ) (struct binlog_wait_query*) ;struct binlog_wait_query* x; } ;


 int assert (struct binlog_wait_query*) ;
 int binlog_wait_time_tree ;
 scalar_t__ lookup_binlog_time (int ) ;
 int next_binlog_wait_time ;
 int stub1 (struct binlog_wait_query*) ;
 int tl_update_next_binlog_wait_time () ;
 int tree_delete_binlog_wait (int ,struct binlog_wait_query*) ;
 struct binlog_wait_query* tree_get_min_binlog_wait (int ) ;
 int zfree (struct binlog_wait_query*,int) ;

void tl_binlog_wait_time_restart_all_finished (void) {
  while (lookup_binlog_time (next_binlog_wait_time) > 0) {
    assert (tree_get_min_binlog_wait (binlog_wait_time_tree));
    struct binlog_wait_query *Q = tree_get_min_binlog_wait (binlog_wait_time_tree)->x;
    assert (Q);
    Q->on_complete (Q);
    binlog_wait_time_tree = tree_delete_binlog_wait (binlog_wait_time_tree, Q);
    tl_update_next_binlog_wait_time ();
    zfree (Q, sizeof (*Q));
  }
}

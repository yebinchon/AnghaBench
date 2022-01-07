
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binlog_wait_query {int (* on_complete ) (struct binlog_wait_query*) ;} ;
struct TYPE_2__ {struct binlog_wait_query* x; } ;


 int assert (struct binlog_wait_query*) ;
 int binlog_wait_tree ;
 long long log_last_pos () ;
 long long next_binlog_wait_pos ;
 int stub1 (struct binlog_wait_query*) ;
 int tl_update_next_binlog_wait_pos () ;
 int tree_delete_binlog_wait (int ,struct binlog_wait_query*) ;
 TYPE_1__* tree_get_min_binlog_wait (int ) ;
 int zfree (struct binlog_wait_query*,int) ;

void tl_binlog_wait_restart_all_finished (void) {
  long long cur_pos = log_last_pos ();

  while (cur_pos >= next_binlog_wait_pos) {
    struct binlog_wait_query *Q = tree_get_min_binlog_wait (binlog_wait_tree)->x;
    assert (Q);
    Q->on_complete (Q);
    binlog_wait_tree = tree_delete_binlog_wait (binlog_wait_tree, Q);
    tl_update_next_binlog_wait_pos ();
    zfree (Q, sizeof (*Q));
  }
}

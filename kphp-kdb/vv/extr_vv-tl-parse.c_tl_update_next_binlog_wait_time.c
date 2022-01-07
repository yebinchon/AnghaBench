
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* x; } ;
typedef TYPE_2__ tree_binlog_wait_t ;
struct TYPE_4__ {int wait_pos; } ;


 int binlog_wait_time_tree ;
 int next_binlog_wait_time ;
 TYPE_2__* tree_get_min_binlog_wait (int ) ;

void tl_update_next_binlog_wait_time (void) {
  tree_binlog_wait_t *T = tree_get_min_binlog_wait (binlog_wait_time_tree);
  next_binlog_wait_time = T ? T->x->wait_pos : 0x7fffffffffffffffll;
}

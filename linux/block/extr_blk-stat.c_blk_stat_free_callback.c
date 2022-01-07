
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_stat_callback {int rcu; } ;


 int blk_stat_free_callback_rcu ;
 int call_rcu (int *,int ) ;

void blk_stat_free_callback(struct blk_stat_callback *cb)
{
 if (cb)
  call_rcu(&cb->rcu, blk_stat_free_callback_rcu);
}

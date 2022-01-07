
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_qos {int q; } ;
struct blk_iolatency {int timer; } ;


 struct blk_iolatency* BLKIOLATENCY (struct rq_qos*) ;
 int blkcg_deactivate_policy (int ,int *) ;
 int blkcg_policy_iolatency ;
 int del_timer_sync (int *) ;
 int kfree (struct blk_iolatency*) ;

__attribute__((used)) static void blkcg_iolatency_exit(struct rq_qos *rqos)
{
 struct blk_iolatency *blkiolat = BLKIOLATENCY(rqos);

 del_timer_sync(&blkiolat->timer);
 blkcg_deactivate_policy(rqos->q, &blkcg_policy_iolatency);
 kfree(blkiolat);
}

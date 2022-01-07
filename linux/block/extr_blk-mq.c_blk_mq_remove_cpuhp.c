
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int cpuhp_dead; } ;


 int CPUHP_BLK_MQ_DEAD ;
 int cpuhp_state_remove_instance_nocalls (int ,int *) ;

__attribute__((used)) static void blk_mq_remove_cpuhp(struct blk_mq_hw_ctx *hctx)
{
 cpuhp_state_remove_instance_nocalls(CPUHP_BLK_MQ_DEAD,
         &hctx->cpuhp_dead);
}

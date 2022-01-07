
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int kobj; } ;


 int blk_mq_hw_ktype ;
 int kobject_init (int *,int *) ;

void blk_mq_hctx_kobj_init(struct blk_mq_hw_ctx *hctx)
{
 kobject_init(&hctx->kobj, &blk_mq_hw_ktype);
}

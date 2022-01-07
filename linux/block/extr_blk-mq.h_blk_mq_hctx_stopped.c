
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int state; } ;


 int BLK_MQ_S_STOPPED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool blk_mq_hctx_stopped(struct blk_mq_hw_ctx *hctx)
{
 return test_bit(BLK_MQ_S_STOPPED, &hctx->state);
}

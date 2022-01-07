
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct blk_mq_ctx {int dummy; } ;


 struct blk_mq_ctx* __blk_mq_get_ctx (struct request_queue*,int ) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static inline struct blk_mq_ctx *blk_mq_get_ctx(struct request_queue *q)
{
 return __blk_mq_get_ctx(q, raw_smp_processor_id());
}

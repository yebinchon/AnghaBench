
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_rng_dev {int irq; int failure_timer; scalar_t__ failure_cnt; } ;
struct timer_list {int dummy; } ;


 struct xgene_rng_dev* ctx ;
 int del_timer (int *) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int failure_timer ;
 struct xgene_rng_dev* from_timer (int ,struct timer_list*,int ) ;

__attribute__((used)) static void xgene_rng_expired_timer(struct timer_list *t)
{
 struct xgene_rng_dev *ctx = from_timer(ctx, t, failure_timer);


 disable_irq(ctx->irq);
 ctx->failure_cnt = 0;
 del_timer(&ctx->failure_timer);
 enable_irq(ctx->irq);
}

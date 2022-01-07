
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct xgene_rng_dev {TYPE_1__ failure_timer; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void xgene_rng_start_timer(struct xgene_rng_dev *ctx)
{
 ctx->failure_timer.expires = jiffies + 120 * HZ;
 add_timer(&ctx->failure_timer);
}

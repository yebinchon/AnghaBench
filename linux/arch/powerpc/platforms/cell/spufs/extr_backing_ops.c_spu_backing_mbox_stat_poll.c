
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int int_mask_class2_RW; int int_stat_class2_RW; } ;
struct TYPE_4__ {int mb_stat_R; } ;
struct TYPE_6__ {int register_lock; TYPE_2__ priv1; TYPE_1__ prob; } ;
struct spu_context {TYPE_3__ csa; } ;
typedef int __poll_t ;


 int CLASS2_ENABLE_MAILBOX_INTR ;
 int CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR ;
 int CLASS2_MAILBOX_INTR ;
 int CLASS2_MAILBOX_THRESHOLD_INTR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t spu_backing_mbox_stat_poll(struct spu_context *ctx,
       __poll_t events)
{
 __poll_t ret;
 u32 stat;

 ret = 0;
 spin_lock_irq(&ctx->csa.register_lock);
 stat = ctx->csa.prob.mb_stat_R;






 if (events & (EPOLLIN | EPOLLRDNORM)) {
  if (stat & 0xff0000)
   ret |= EPOLLIN | EPOLLRDNORM;
  else {
   ctx->csa.priv1.int_stat_class2_RW &=
    ~CLASS2_MAILBOX_INTR;
   ctx->csa.priv1.int_mask_class2_RW |=
    CLASS2_ENABLE_MAILBOX_INTR;
  }
 }
 if (events & (EPOLLOUT | EPOLLWRNORM)) {
  if (stat & 0x00ff00)
   ret = EPOLLOUT | EPOLLWRNORM;
  else {
   ctx->csa.priv1.int_stat_class2_RW &=
    ~CLASS2_MAILBOX_THRESHOLD_INTR;
   ctx->csa.priv1.int_mask_class2_RW |=
    CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR;
  }
 }
 spin_unlock_irq(&ctx->csa.register_lock);
 return ret;
}

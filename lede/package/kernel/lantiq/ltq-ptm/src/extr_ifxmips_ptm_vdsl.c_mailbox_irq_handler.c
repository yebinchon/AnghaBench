
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_descriptor {scalar_t__ own; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* itf; } ;
struct TYPE_3__ {size_t rx_desc_pos; int napi; } ;


 unsigned int BIT (int) ;
 unsigned int IFX_REG_R32 (int ) ;
 int IFX_REG_W32 (unsigned int,int ) ;
 int IFX_REG_W32_MASK (int,int ,int ) ;
 int IRQ_HANDLED ;
 int MBOX_IGU1_IER ;
 int MBOX_IGU1_ISR ;
 int MBOX_IGU1_ISRC ;
 struct rx_descriptor* WAN_RX_DESC_BASE ;
 int err (char*) ;
 int * g_net_dev ;
 TYPE_2__ g_ptm_priv_data ;
 int g_swap_desc_tasklet ;
 int napi_schedule (int *) ;
 int netif_wake_queue (int ) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static irqreturn_t mailbox_irq_handler(int irq, void *dev_id)
{
    unsigned int isr;
    int i;

    isr = IFX_REG_R32(MBOX_IGU1_ISR);
    IFX_REG_W32(isr, MBOX_IGU1_ISRC);
    isr &= IFX_REG_R32(MBOX_IGU1_IER);

            if (isr & BIT(0)) {
                IFX_REG_W32_MASK(1, 0, MBOX_IGU1_IER);
                napi_schedule(&g_ptm_priv_data.itf[0].napi);
            }
    if (isr & BIT(16)) {
                IFX_REG_W32_MASK(1 << 16, 0, MBOX_IGU1_IER);
                tasklet_hi_schedule(&g_swap_desc_tasklet);
            }
     if (isr & BIT(17)) {
                IFX_REG_W32_MASK(1 << 17, 0, MBOX_IGU1_IER);
                netif_wake_queue(g_net_dev[0]);
         }

    return IRQ_HANDLED;
}

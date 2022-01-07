
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_13__ {scalar_t__ mode; } ;
struct TYPE_14__ {int lock; scalar_t__ netcount; scalar_t__ dsr_chkcount; scalar_t__ ri_chkcount; scalar_t__ cts_chkcount; scalar_t__ dcd_chkcount; TYPE_1__ params; scalar_t__ tx_get; scalar_t__ tx_put; scalar_t__ tx_count; } ;
typedef TYPE_2__ MGSLPC_INFO ;


 int CHB ;
 scalar_t__ C_CREAD (struct tty_struct*) ;
 int IRQ_CTS ;
 int IRQ_DCD ;
 scalar_t__ MGSL_MODE_HDLC ;
 scalar_t__ PVR_DSR ;
 unsigned char PVR_RI ;
 int async_mode (TYPE_2__*) ;
 int get_signals (TYPE_2__*) ;
 int hdlc_mode (TYPE_2__*) ;
 int irq_enable (TYPE_2__*,int ,int) ;
 int port_irq_enable (TYPE_2__*,unsigned char) ;
 int rx_start (TYPE_2__*) ;
 int rx_stop (TYPE_2__*) ;
 int set_signals (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_stop (TYPE_2__*) ;

__attribute__((used)) static void mgslpc_program_hw(MGSLPC_INFO *info, struct tty_struct *tty)
{
 unsigned long flags;

 spin_lock_irqsave(&info->lock, flags);

 rx_stop(info);
 tx_stop(info);
 info->tx_count = info->tx_put = info->tx_get = 0;

 if (info->params.mode == MGSL_MODE_HDLC || info->netcount)
  hdlc_mode(info);
 else
  async_mode(info);

 set_signals(info);

 info->dcd_chkcount = 0;
 info->cts_chkcount = 0;
 info->ri_chkcount = 0;
 info->dsr_chkcount = 0;

 irq_enable(info, CHB, IRQ_DCD | IRQ_CTS);
 port_irq_enable(info, (unsigned char) PVR_DSR | PVR_RI);
 get_signals(info);

 if (info->netcount || (tty && C_CREAD(tty)))
  rx_start(info);

 spin_unlock_irqrestore(&info->lock, flags);
}

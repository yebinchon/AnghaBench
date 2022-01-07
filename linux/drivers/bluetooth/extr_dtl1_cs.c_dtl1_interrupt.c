
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dtl1_info {unsigned char ri_latch; int lock; int tx_state; TYPE_2__* p_dev; int hdev; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;


 int BT_ERR (char*,...) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ UART_IIR ;
 int UART_IIR_ID ;



 scalar_t__ UART_LSR ;
 int UART_LSR_THRE ;
 scalar_t__ UART_MSR ;
 unsigned char UART_MSR_RI ;
 int XMIT_WAITING ;
 int clear_bit (int ,int *) ;
 int dtl1_receive (struct dtl1_info*) ;
 int dtl1_write_wakeup (struct dtl1_info*) ;
 int inb (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t dtl1_interrupt(int irq, void *dev_inst)
{
 struct dtl1_info *info = dev_inst;
 unsigned int iobase;
 unsigned char msr;
 int boguscount = 0;
 int iir, lsr;
 irqreturn_t r = IRQ_NONE;

 if (!info || !info->hdev)

  return IRQ_NONE;

 iobase = info->p_dev->resource[0]->start;

 spin_lock(&(info->lock));

 iir = inb(iobase + UART_IIR) & UART_IIR_ID;
 while (iir) {

  r = IRQ_HANDLED;

  lsr = inb(iobase + UART_LSR);

  switch (iir) {
  case 129:
   BT_ERR("RLSI");
   break;
  case 130:

   dtl1_receive(info);
   break;
  case 128:
   if (lsr & UART_LSR_THRE) {

    dtl1_write_wakeup(info);
   }
   break;
  default:
   BT_ERR("Unhandled IIR=%#x", iir);
   break;
  }


  if (boguscount++ > 100)
   break;

  iir = inb(iobase + UART_IIR) & UART_IIR_ID;

 }

 msr = inb(iobase + UART_MSR);

 if (info->ri_latch ^ (msr & UART_MSR_RI)) {
  info->ri_latch = msr & UART_MSR_RI;
  clear_bit(XMIT_WAITING, &(info->tx_state));
  dtl1_write_wakeup(info);
  r = IRQ_HANDLED;
 }

 spin_unlock(&(info->lock));

 return r;
}

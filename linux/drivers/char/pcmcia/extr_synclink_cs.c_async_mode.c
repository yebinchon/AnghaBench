
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int data_rate; int data_bits; int stop_bits; scalar_t__ parity; int flags; scalar_t__ loopback; } ;
struct TYPE_16__ {int serial_signals; TYPE_1__ params; } ;
typedef TYPE_2__ MGSLPC_INFO ;


 scalar_t__ ASYNC_PARITY_NONE ;
 scalar_t__ ASYNC_PARITY_ODD ;
 unsigned char BIT0 ;
 unsigned char BIT2 ;
 unsigned char BIT3 ;
 unsigned char BIT4 ;
 unsigned char BIT5 ;
 unsigned char BIT6 ;
 scalar_t__ CCR0 ;
 scalar_t__ CCR1 ;
 scalar_t__ CCR2 ;
 scalar_t__ CCR3 ;
 scalar_t__ CCR4 ;
 scalar_t__ CHA ;
 scalar_t__ CHB ;
 scalar_t__ CMD_RXRESET ;
 scalar_t__ CMD_TXRESET ;
 scalar_t__ DAFO ;
 int HDLC_FLAG_AUTO_CTS ;
 int HDLC_FLAG_AUTO_DCD ;
 int IRQ_ALLSENT ;
 int IRQ_BREAK_ON ;
 int IRQ_CTS ;
 int IRQ_RXEOM ;
 int IRQ_RXFIFO ;
 int IRQ_RXTIME ;
 int IRQ_TXFIFO ;
 scalar_t__ ISR ;
 scalar_t__ MODE ;
 scalar_t__ PVR ;
 scalar_t__ RFC ;
 scalar_t__ RLCR ;
 int SerialSignal_RTS ;
 scalar_t__ XBCH ;
 int clear_reg_bits (TYPE_2__*,scalar_t__,unsigned char) ;
 int enable_auxclk (TYPE_2__*) ;
 int irq_disable (TYPE_2__*,scalar_t__,int) ;
 int irq_enable (TYPE_2__*,scalar_t__,int) ;
 int issue_command (TYPE_2__*,scalar_t__,scalar_t__) ;
 int mgslpc_set_rate (TYPE_2__*,scalar_t__,int) ;
 int port_irq_disable (TYPE_2__*,int) ;
 int read_reg16 (TYPE_2__*,scalar_t__) ;
 int set_reg_bits (TYPE_2__*,scalar_t__,unsigned char) ;
 int wait_command_complete (TYPE_2__*,scalar_t__) ;
 int write_reg (TYPE_2__*,scalar_t__,unsigned char) ;

__attribute__((used)) static void async_mode(MGSLPC_INFO *info)
{
 unsigned char val;


 irq_disable(info, CHA, 0xffff);
 irq_disable(info, CHB, 0xffff);
 port_irq_disable(info, 0xff);
 val = 0x06;
 if (info->params.loopback)
  val |= BIT0;


 if (!(info->serial_signals & SerialSignal_RTS))
  val |= BIT6;
 write_reg(info, CHA + MODE, val);
 write_reg(info, CHA + CCR0, 0x83);
 write_reg(info, CHA + CCR1, 0x1f);
 write_reg(info, CHA + CCR2, 0x10);
 write_reg(info, CHA + CCR3, 0);
 write_reg(info, CHA + CCR4, 0x50);
 mgslpc_set_rate(info, CHA, info->params.data_rate * 16);
 val = 0x00;
 if (info->params.data_bits != 8)
  val |= BIT0;
 if (info->params.stop_bits != 1)
  val |= BIT5;
 if (info->params.parity != ASYNC_PARITY_NONE)
 {
  val |= BIT2;
  if (info->params.parity == ASYNC_PARITY_ODD)
   val |= BIT3;
  else
   val |= BIT4;
 }
 write_reg(info, CHA + DAFO, val);
 write_reg(info, CHA + RFC, 0x5c);





 write_reg(info, CHA + RLCR, 0);
 val = 0x00;
 if (info->params.flags & HDLC_FLAG_AUTO_DCD)
  val |= BIT5;
 write_reg(info, CHA + XBCH, val);
 if (info->params.flags & HDLC_FLAG_AUTO_CTS)
  irq_enable(info, CHA, IRQ_CTS);


 set_reg_bits(info, CHA + MODE, BIT3);
 enable_auxclk(info);
 if (info->params.flags & HDLC_FLAG_AUTO_CTS) {
  irq_enable(info, CHB, IRQ_CTS);

  set_reg_bits(info, CHA + PVR, BIT3);
 } else
  clear_reg_bits(info, CHA + PVR, BIT3);
 irq_enable(info, CHA,
     IRQ_RXEOM | IRQ_RXFIFO | IRQ_BREAK_ON | IRQ_RXTIME |
     IRQ_ALLSENT | IRQ_TXFIFO);
 issue_command(info, CHA, CMD_TXRESET + CMD_RXRESET);
 wait_command_complete(info, CHA);
 read_reg16(info, CHA + ISR);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int flags; int encoding; scalar_t__ crc_type; int preamble; int preamble_length; int clock_speed; scalar_t__ loopback; } ;
struct TYPE_20__ {int serial_signals; scalar_t__ testing_irq; TYPE_1__ params; } ;
typedef TYPE_2__ MGSLPC_INFO ;


 unsigned char BIT0 ;
 unsigned char BIT1 ;
 unsigned char BIT2 ;
 unsigned char BIT3 ;
 unsigned char BIT4 ;
 unsigned char BIT5 ;
 unsigned char BIT6 ;
 unsigned char BIT7 ;
 scalar_t__ CCR0 ;
 scalar_t__ CCR1 ;
 scalar_t__ CCR2 ;
 scalar_t__ CCR3 ;
 scalar_t__ CCR4 ;
 scalar_t__ CHA ;
 scalar_t__ CHB ;
 scalar_t__ CMD_RXRESET ;
 scalar_t__ CMD_TXRESET ;
 scalar_t__ HDLC_CRC_32_CCITT ;
 scalar_t__ HDLC_CRC_NONE ;



 int HDLC_ENCODING_NRZB ;

 int HDLC_FLAG_AUTO_CTS ;
 int HDLC_FLAG_AUTO_DCD ;
 int HDLC_FLAG_RXC_BRG ;
 int HDLC_FLAG_RXC_DPLL ;
 int HDLC_FLAG_TXC_BRG ;
 int HDLC_FLAG_TXC_DPLL ;






 int HDLC_PREAMBLE_PATTERN_NONE ;

 int IRQ_ALLSENT ;
 int IRQ_CTS ;
 int IRQ_RXEOM ;
 int IRQ_RXFIFO ;
 int IRQ_TXFIFO ;
 int IRQ_UNDERRUN ;
 scalar_t__ ISR ;
 scalar_t__ MODE ;
 scalar_t__ PRE ;
 scalar_t__ PVR ;
 scalar_t__ RLCR ;
 int SerialSignal_RTS ;
 scalar_t__ XBCH ;
 int clear_reg_bits (TYPE_2__*,scalar_t__,unsigned char) ;
 int enable_auxclk (TYPE_2__*) ;
 int irq_disable (TYPE_2__*,scalar_t__,int) ;
 int irq_enable (TYPE_2__*,scalar_t__,int) ;
 int issue_command (TYPE_2__*,scalar_t__,scalar_t__) ;
 int loopback_enable (TYPE_2__*) ;
 int mgslpc_set_rate (TYPE_2__*,scalar_t__,int) ;
 int port_irq_disable (TYPE_2__*,int) ;
 int read_reg16 (TYPE_2__*,scalar_t__) ;
 int rx_stop (TYPE_2__*) ;
 int set_reg_bits (TYPE_2__*,scalar_t__,unsigned char) ;
 int tx_set_idle (TYPE_2__*) ;
 int tx_stop (TYPE_2__*) ;
 int wait_command_complete (TYPE_2__*,scalar_t__) ;
 int write_reg (TYPE_2__*,scalar_t__,unsigned char) ;

__attribute__((used)) static void hdlc_mode(MGSLPC_INFO *info)
{
 unsigned char val;
 unsigned char clkmode, clksubmode;


 irq_disable(info, CHA, 0xffff);
 irq_disable(info, CHB, 0xffff);
 port_irq_disable(info, 0xff);


 clkmode = clksubmode = 0;
 if (info->params.flags & HDLC_FLAG_RXC_DPLL
     && info->params.flags & HDLC_FLAG_TXC_DPLL) {

  clkmode = 7;
 } else if (info->params.flags & HDLC_FLAG_RXC_BRG
   && info->params.flags & HDLC_FLAG_TXC_BRG) {

  clkmode = 7;
  clksubmode = 1;
 } else if (info->params.flags & HDLC_FLAG_RXC_DPLL) {
  if (info->params.flags & HDLC_FLAG_TXC_BRG) {

   clkmode = 6;
   clksubmode = 1;
  } else {

   clkmode = 6;
  }
 } else if (info->params.flags & HDLC_FLAG_TXC_BRG) {

  clksubmode = 1;
 }
 val = 0x82;
 if (info->params.loopback)
  val |= BIT0;


 if (info->serial_signals & SerialSignal_RTS)
  val |= BIT2;
 write_reg(info, CHA + MODE, val);
 val = 0xc0;
 switch (info->params.encoding)
 {
 case 135:
  val |= BIT3;
  break;
 case 136:
  val |= BIT4;
  break;
 case 137:
  val |= BIT4 | BIT2;
  break;
 case 138:
  val |= BIT4 | BIT3;
  break;
 }
 write_reg(info, CHA + CCR0, val);
 val = 0x10 + clkmode;
 write_reg(info, CHA + CCR1, val);
 val = 0x00;
 if (clkmode == 2 || clkmode == 3 || clkmode == 6
     || clkmode == 7 || (clkmode == 0 && clksubmode == 1))
  val |= BIT5;
 if (clksubmode)
  val |= BIT4;
 if (info->params.crc_type == HDLC_CRC_32_CCITT)
  val |= BIT1;
 if (info->params.encoding == HDLC_ENCODING_NRZB)
  val |= BIT0;
 write_reg(info, CHA + CCR2, val);
 val = 0x00;
 if (info->params.crc_type == HDLC_CRC_NONE)
  val |= BIT2 | BIT1;
 if (info->params.preamble != HDLC_PREAMBLE_PATTERN_NONE)
  val |= BIT5;
 switch (info->params.preamble_length)
 {
 case 134:
  val |= BIT6;
  break;
 case 133:
  val |= BIT6;
  break;
 case 132:
  val |= BIT7 | BIT6;
  break;
 }
 write_reg(info, CHA + CCR3, val);


 val = 0;
 switch (info->params.preamble)
 {
 case 129: val = 0x7e; break;
 case 130: val = 0xaa; break;
 case 131: val = 0x55; break;
 case 128: val = 0xff; break;
 }
 write_reg(info, CHA + PRE, val);
 val = 0x50;
 write_reg(info, CHA + CCR4, val);
 if (info->params.flags & HDLC_FLAG_RXC_DPLL)
  mgslpc_set_rate(info, CHA, info->params.clock_speed * 16);
 else
  mgslpc_set_rate(info, CHA, info->params.clock_speed);






 write_reg(info, CHA + RLCR, 0);
 val = 0x00;
 if (info->params.flags & HDLC_FLAG_AUTO_DCD)
  val |= BIT5;
 write_reg(info, CHA + XBCH, val);
 enable_auxclk(info);
 if (info->params.loopback || info->testing_irq)
  loopback_enable(info);
 if (info->params.flags & HDLC_FLAG_AUTO_CTS)
 {
  irq_enable(info, CHB, IRQ_CTS);

  set_reg_bits(info, CHA + PVR, BIT3);
 } else
  clear_reg_bits(info, CHA + PVR, BIT3);

 irq_enable(info, CHA,
    IRQ_RXEOM | IRQ_RXFIFO | IRQ_ALLSENT |
    IRQ_UNDERRUN | IRQ_TXFIFO);
 issue_command(info, CHA, CMD_TXRESET + CMD_RXRESET);
 wait_command_complete(info, CHA);
 read_reg16(info, CHA + ISR);
 if (!info->testing_irq)
  clear_reg_bits(info, CHA + CCR0, BIT6);

 tx_set_idle(info);

 tx_stop(info);
 rx_stop(info);
}

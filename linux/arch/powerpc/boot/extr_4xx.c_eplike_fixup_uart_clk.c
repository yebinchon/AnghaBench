
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DCRN_SDR0_UART0 ;
 int DCRN_SDR0_UART1 ;
 int DCRN_SDR0_UART2 ;
 int DCRN_SDR0_UART3 ;
 unsigned int SDR0_READ (int ) ;
 unsigned int __fix_zero (unsigned int,int) ;
 int dt_fixup_clock (char const*,unsigned int) ;

__attribute__((used)) static void eplike_fixup_uart_clk(int index, const char *path,
      unsigned int ser_clk,
      unsigned int plb_clk)
{
 unsigned int sdr;
 unsigned int clock;

 switch (index) {
 case 0:
  sdr = SDR0_READ(DCRN_SDR0_UART0);
  break;
 case 1:
  sdr = SDR0_READ(DCRN_SDR0_UART1);
  break;
 case 2:
  sdr = SDR0_READ(DCRN_SDR0_UART2);
  break;
 case 3:
  sdr = SDR0_READ(DCRN_SDR0_UART3);
  break;
 default:
  return;
 }

 if (sdr & 0x00800000u)
  clock = ser_clk;
 else
  clock = plb_clk / __fix_zero(sdr & 0xff, 256);

 dt_fixup_clock(path, clock);
}

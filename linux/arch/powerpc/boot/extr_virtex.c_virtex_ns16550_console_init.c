
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int spd ;
typedef int reg_shift ;
typedef int reg_offset ;
typedef int clk ;


 int UART_DLL ;
 int UART_DLM ;
 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_LCR ;
 int UART_LCR_DLAB ;
 int UART_LCR_WLEN8 ;
 int UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 int dt_get_virtual_reg (void*,void**,int) ;
 int getprop (void*,char*,void*,int) ;
 int out_8 (unsigned char*,int) ;

__attribute__((used)) static int virtex_ns16550_console_init(void *devp)
{
 unsigned char *reg_base;
 u32 reg_shift, reg_offset, clk, spd;
 u16 divisor;
 int n;

 if (dt_get_virtual_reg(devp, (void **)&reg_base, 1) < 1)
  return -1;

 n = getprop(devp, "reg-offset", &reg_offset, sizeof(reg_offset));
 if (n == sizeof(reg_offset))
  reg_base += reg_offset;

 n = getprop(devp, "reg-shift", &reg_shift, sizeof(reg_shift));
 if (n != sizeof(reg_shift))
  reg_shift = 0;

 n = getprop(devp, "current-speed", (void *)&spd, sizeof(spd));
 if (n != sizeof(spd))
  spd = 9600;


 n = getprop(devp, "clock-frequency", (void *)&clk, sizeof(clk));
 if (n != sizeof(clk))
  return -1;

 divisor = clk / (16 * spd);


 out_8(reg_base + (UART_LCR << reg_shift), UART_LCR_DLAB);


 out_8(reg_base + (UART_DLL << reg_shift), divisor & 0xFF);
 out_8(reg_base + (UART_DLM << reg_shift), divisor >> 8);


 out_8(reg_base + (UART_LCR << reg_shift), UART_LCR_WLEN8);


 out_8(reg_base + (UART_MCR << reg_shift), UART_MCR_RTS | UART_MCR_DTR);


 out_8(reg_base + (UART_FCR << reg_shift),
    UART_FCR_CLEAR_XMIT | UART_FCR_CLEAR_RCVR);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LCR_DLAB ;
 int UART_DLL ;
 int UART_DLM ;
 int UART_LCR ;
 int UART_MCR ;
 int udbg_uart_in (int ) ;
 int udbg_uart_out (int ,int) ;

unsigned int udbg_probe_uart_speed(unsigned int clock)
{
 unsigned int dll, dlm, divisor, prescaler, speed;
 u8 old_lcr;

 old_lcr = udbg_uart_in(UART_LCR);


 udbg_uart_out(UART_LCR, old_lcr | LCR_DLAB);


 dll = udbg_uart_in(UART_DLL);
 dlm = udbg_uart_in(UART_DLM);
 divisor = dlm << 8 | dll;


 if (udbg_uart_in(UART_MCR) & 0x80)
  prescaler = 4;
 else
  prescaler = 1;


 udbg_uart_out(UART_LCR, old_lcr);


 speed = (clock / prescaler) / (divisor * 16);


 if (speed > (clock / 16))
  speed = 9600;

 return speed;
}

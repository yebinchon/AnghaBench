
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCR_DLAB ;
 int UART_DLL ;
 int UART_DLM ;
 int UART_FCR ;
 int UART_IER ;
 int UART_LCR ;
 int UART_MCR ;
 int udbg_uart_out (int ,int) ;

void udbg_uart_setup(unsigned int speed, unsigned int clock)
{
 unsigned int dll, base_bauds;

 if (!udbg_uart_out)
  return;

 if (clock == 0)
  clock = 1843200;
 if (speed == 0)
  speed = 9600;

 base_bauds = clock / 16;
 dll = base_bauds / speed;

 udbg_uart_out(UART_LCR, 0x00);
 udbg_uart_out(UART_IER, 0xff);
 udbg_uart_out(UART_IER, 0x00);
 udbg_uart_out(UART_LCR, LCR_DLAB);
 udbg_uart_out(UART_DLL, dll & 0xff);
 udbg_uart_out(UART_DLM, dll >> 8);

 udbg_uart_out(UART_LCR, 0x3);

 udbg_uart_out(UART_MCR, 0x3);

 udbg_uart_out(UART_FCR, 0x7);
}

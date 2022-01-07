
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AVR_QUOT (int ) ;
 scalar_t__ UART_DLL ;
 scalar_t__ UART_DLM ;
 scalar_t__ UART_FCR ;
 unsigned char UART_FCR_ENABLE_FIFO ;
 scalar_t__ UART_IER ;
 scalar_t__ UART_LCR ;
 unsigned char UART_LCR_DLAB ;
 unsigned char UART_LCR_EPAR ;
 unsigned char UART_LCR_PARITY ;
 unsigned char UART_LCR_STOP ;
 unsigned char UART_LCR_WLEN8 ;
 scalar_t__ UART_MCR ;
 scalar_t__ avr_addr ;
 int avr_clock ;
 int out_8 (scalar_t__,unsigned char) ;

void avr_uart_configure(void)
{
 unsigned char cval = UART_LCR_WLEN8;
 unsigned int quot = AVR_QUOT(avr_clock);

 if (!avr_addr || !avr_clock)
  return;

 out_8(avr_addr + UART_LCR, cval);
 out_8(avr_addr + UART_MCR, 0);
 out_8(avr_addr + UART_IER, 0);

 cval |= UART_LCR_STOP | UART_LCR_PARITY | UART_LCR_EPAR;

 out_8(avr_addr + UART_LCR, cval);

 out_8(avr_addr + UART_LCR, cval | UART_LCR_DLAB);
 out_8(avr_addr + UART_DLL, quot & 0xff);
 out_8(avr_addr + UART_DLM, quot >> 8);
 out_8(avr_addr + UART_LCR, cval);
 out_8(avr_addr + UART_FCR, UART_FCR_ENABLE_FIFO);
}

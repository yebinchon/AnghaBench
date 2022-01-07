
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pio_base; } ;


 TYPE_1__ udbg_uart ;
 int udbg_uart_in ;
 int udbg_uart_in_pio ;
 int udbg_uart_out ;
 int udbg_uart_out_pio ;
 unsigned int udbg_uart_stride ;
 int udbg_use_uart () ;

void udbg_uart_init_pio(unsigned long port, unsigned int stride)
{
 if (!port)
  return;
 udbg_uart.pio_base = port;
 udbg_uart_stride = stride;
 udbg_uart_in = udbg_uart_in_pio;
 udbg_uart_out = udbg_uart_out_pio;
 udbg_use_uart();
}

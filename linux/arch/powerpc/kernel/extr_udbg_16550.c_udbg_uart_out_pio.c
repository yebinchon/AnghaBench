
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ pio_base; } ;


 int outb (int ,scalar_t__) ;
 TYPE_1__ udbg_uart ;
 unsigned int udbg_uart_stride ;

__attribute__((used)) static void udbg_uart_out_pio(unsigned int reg, u8 data)
{
 outb(data, udbg_uart.pio_base + (reg * udbg_uart_stride));
}

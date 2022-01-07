
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ pio_base; } ;


 int inb (scalar_t__) ;
 TYPE_1__ udbg_uart ;
 unsigned int udbg_uart_stride ;

__attribute__((used)) static u8 udbg_uart_in_pio(unsigned int reg)
{
 return inb(udbg_uart.pio_base + (reg * udbg_uart_stride));
}

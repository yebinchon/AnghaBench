
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_LSR ;
 int UART_LSR_THRE ;
 int in_8 (scalar_t__) ;
 int out_8 (scalar_t__,unsigned char) ;
 scalar_t__ reg_base ;
 int reg_shift ;

__attribute__((used)) static void ns16550_putc(unsigned char c)
{
 while ((in_8(reg_base + (UART_LSR << reg_shift)) & UART_LSR_THRE) == 0);
 out_8(reg_base, c);
}

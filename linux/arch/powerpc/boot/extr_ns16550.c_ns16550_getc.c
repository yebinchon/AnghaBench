
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_LSR ;
 unsigned char UART_LSR_DR ;
 unsigned char in_8 (scalar_t__) ;
 scalar_t__ reg_base ;
 int reg_shift ;

__attribute__((used)) static unsigned char ns16550_getc(void)
{
 while ((in_8(reg_base + (UART_LSR << reg_shift)) & UART_LSR_DR) == 0);
 return in_8(reg_base);
}

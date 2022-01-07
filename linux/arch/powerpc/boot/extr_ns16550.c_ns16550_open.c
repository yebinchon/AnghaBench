
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_FCR ;
 int out_8 (scalar_t__,int) ;
 scalar_t__ reg_base ;
 int reg_shift ;

__attribute__((used)) static int ns16550_open(void)
{
 out_8(reg_base + (UART_FCR << reg_shift), 0x06);
 return 0;
}

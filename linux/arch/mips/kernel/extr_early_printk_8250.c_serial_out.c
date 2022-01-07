
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ serial8250_base ;
 int serial8250_reg_shift ;
 int writeb (char,scalar_t__) ;

__attribute__((used)) static inline void serial_out(int offset, char value)
{
 writeb(value, serial8250_base + (offset << serial8250_reg_shift));
}

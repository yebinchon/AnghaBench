
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int readb (scalar_t__) ;
 scalar_t__ serial8250_base ;
 int serial8250_reg_shift ;

__attribute__((used)) static inline u8 serial_in(int offset)
{
 return readb(serial8250_base + (offset << serial8250_reg_shift));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AUXIO_AUX1_LED ;
 int AUXIO_PCIO_LED ;
 int __auxio_rmw (int ,int ,int) ;

__attribute__((used)) static void __auxio_set_bit(u8 bit, int on, int ebus)
{
 u8 bits_on = (ebus ? AUXIO_PCIO_LED : AUXIO_AUX1_LED);
 u8 bits_off = 0;

 if (!on) {
  u8 tmp = bits_off;
  bits_off = bits_on;
  bits_on = tmp;
 }
 __auxio_rmw(bits_on, bits_off, ebus);
}

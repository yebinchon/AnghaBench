
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int idt77252_fls (unsigned int) ;

__attribute__((used)) static u16
idt77252_int_to_atmfp(unsigned int rate)
{
 u16 m, e;

 if (rate == 0)
  return 0;
 e = idt77252_fls(rate) - 1;
 if (e < 9)
  m = (rate - (1 << e)) << (9 - e);
 else if (e == 9)
  m = (rate - (1 << e));
 else
  m = (rate - (1 << e)) >> (e - 9);
 return 0x4000 | (e << 9) | m;
}

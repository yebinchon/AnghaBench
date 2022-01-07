
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NONZERO ;

__attribute__((used)) static unsigned
rate_to_atmf(unsigned rate)
{


 unsigned exp = 0;

 if (rate == 0)
  return 0;

 rate <<= 9;
 while (rate > 0x3ff) {
  ++exp;
  rate >>= 1;
 }

 return ((1 << 14) | (exp << 9) | (rate & 0x1ff));
}

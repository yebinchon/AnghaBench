
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIE (char*) ;

__attribute__((used)) static unsigned short can_encode(unsigned val)
{
 unsigned shift = 0;
 if (!val)
  DIE("can_encode: invalid argument");
 if (val < 256)
  return val;

 while (shift < 16 && (val>255 || !(val&3))) {
  val = (val&3)<<30 | val>>2;
  ++shift;
 }
 if (shift > 15 || val > 255) {
  return 0;
 }
 return (16-shift)<<8 | val;
}

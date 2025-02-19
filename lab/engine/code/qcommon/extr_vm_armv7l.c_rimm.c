
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIE (char*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned short rimm(unsigned val)
{
 unsigned shift = 0;
 if (val < 256)
  return val;

 while (shift < 16 && (val>255 || !(val&3))) {
  val = (val&3)<<30 | val>>2;
  ++shift;
 }
 if (shift > 15 || val > 255) {
  DIE("immediate cannot be encoded (%d, %d)\n", shift, val);
 }
 return (16-shift)<<8 | val;
}

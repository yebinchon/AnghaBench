
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;


 int UNW_DEC_RESTORE (int ,int ,unsigned char,void*) ;
 int UNW_DEC_SPILL_REG (int ,int ,unsigned char,unsigned char,unsigned char,void*) ;
 int X2 ;
 int unw_decode_uleb128 (unsigned char**) ;

__attribute__((used)) static unsigned char *
unw_decode_x2 (unsigned char *dp, unsigned char code, void *arg)
{
  unsigned char byte1, byte2, abreg, x, ytreg;
  unw_word t;

  byte1 = *dp++; byte2 = *dp++;
  t = unw_decode_uleb128 (&dp);
  abreg = (byte1 & 0x7f);
  ytreg = byte2;
  x = (byte1 >> 7) & 1;
  if ((byte1 & 0x80) == 0 && ytreg == 0)
    UNW_DEC_RESTORE(X2, t, abreg, arg);
  else
    UNW_DEC_SPILL_REG(X2, t, abreg, x, ytreg, arg);
  return dp;
}

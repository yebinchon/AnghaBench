
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word ;


 int UNW_DEC_SPILL_PSPREL (int ,int ,unsigned char,int ,void*) ;
 int UNW_DEC_SPILL_SPREL (int ,int ,unsigned char,int ,void*) ;
 int X1 ;
 int unw_decode_uleb128 (unsigned char**) ;

__attribute__((used)) static unsigned char *
unw_decode_x1 (unsigned char *dp, unsigned char code, void *arg)
{
  unsigned char byte1, abreg;
  unw_word t, off;

  byte1 = *dp++;
  t = unw_decode_uleb128 (&dp);
  off = unw_decode_uleb128 (&dp);
  abreg = (byte1 & 0x7f);
  if (byte1 & 0x80)
   UNW_DEC_SPILL_SPREL(X1, t, abreg, off, arg);
  else
   UNW_DEC_SPILL_PSPREL(X1, t, abreg, off, arg);
  return dp;
}

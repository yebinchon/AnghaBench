
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef size_t SizeT ;
typedef int const Byte ;


 int GetBe32 (int const*) ;
 int SetBe32 (int const*,int) ;

SizeT SPARC_Convert(Byte *data, SizeT size, UInt32 ip, int encoding)
{
  Byte *p;
  const Byte *lim;
  size &= ~(size_t)3;
  ip -= 4;
  p = data;
  lim = data + size;

  for (;;)
  {
    for (;;)
    {
      if (p >= lim)
        return p - data;
      p += 4;
      if ((p[-4] == 0x40 && (p[-3] & 0xC0) == 0) ||
          (p[-4] == 0x7F && (p[-3] >= 0xC0)))
        break;
    }
    {
      UInt32 v = GetBe32(p - 4);
      v <<= 2;
      if (encoding)
        v += ip + (UInt32)(p - data);
      else
        v -= ip + (UInt32)(p - data);

      v &= 0x01FFFFFF;
      v -= (UInt32)1 << 24;
      v ^= 0xFF000000;
      v >>= 2;
      v |= 0x40000000;
      SetBe32(p - 4, v);
    }
  }
}

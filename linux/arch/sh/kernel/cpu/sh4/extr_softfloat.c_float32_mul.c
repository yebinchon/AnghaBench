
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;


 int extractFloat32Exp (int ) ;
 unsigned int extractFloat32Frac (int ) ;
 char extractFloat32Sign (int ) ;
 int normalizeFloat32Subnormal (unsigned int,int*,unsigned int*) ;
 int packFloat32 (char,int ,int ) ;
 int roundAndPackFloat32 (char,int,unsigned int) ;
 int shift64RightJamming (unsigned long long,int,unsigned long long*) ;

float32 float32_mul(float32 a, float32 b)
{
 char aSign, bSign, zSign;
 int aExp, bExp, zExp;
 unsigned int aSig, bSig;
 unsigned long long zSig64;
 unsigned int zSig;

 aSig = extractFloat32Frac(a);
 aExp = extractFloat32Exp(a);
 aSign = extractFloat32Sign(a);
 bSig = extractFloat32Frac(b);
 bExp = extractFloat32Exp(b);
 bSign = extractFloat32Sign(b);
 zSign = aSign ^ bSign;
 if (aExp == 0) {
  if (aSig == 0)
   return packFloat32(zSign, 0, 0);
  normalizeFloat32Subnormal(aSig, &aExp, &aSig);
 }
 if (bExp == 0) {
  if (bSig == 0)
   return packFloat32(zSign, 0, 0);
  normalizeFloat32Subnormal(bSig, &bExp, &bSig);
 }
 if ((bExp == 0xff && bSig == 0) || (aExp == 0xff && aSig == 0))
  return roundAndPackFloat32(zSign, 0xff, 0);

 zExp = aExp + bExp - 0x7F;
 aSig = (aSig | 0x00800000) << 7;
 bSig = (bSig | 0x00800000) << 8;
 shift64RightJamming(((unsigned long long)aSig) * bSig, 32, &zSig64);
 zSig = zSig64;
 if (0 <= (signed int)(zSig << 1)) {
  zSig <<= 1;
  --zExp;
 }
 return roundAndPackFloat32(zSign, zExp, zSig);

}

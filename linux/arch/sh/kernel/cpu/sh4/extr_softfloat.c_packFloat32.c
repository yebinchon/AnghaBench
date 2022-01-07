
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16 ;
typedef int float32 ;
typedef scalar_t__ flag ;
typedef int bits32 ;



float32 packFloat32(flag zSign, int16 zExp, bits32 zSig)
{
 return (((bits32) zSign) << 31) + (((bits32) zExp) << 23) + zSig;
}

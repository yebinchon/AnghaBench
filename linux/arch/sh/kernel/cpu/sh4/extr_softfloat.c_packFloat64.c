
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16 ;
typedef int float64 ;
typedef scalar_t__ flag ;
typedef int bits64 ;



float64 packFloat64(flag zSign, int16 zExp, bits64 zSig)
{
 return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
}

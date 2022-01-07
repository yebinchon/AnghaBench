
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;
typedef int int16 ;
typedef int bits32 ;


 int countLeadingZeros32 (int) ;

__attribute__((used)) static void normalizeFloat32Subnormal(bits32 aSig, int16 * zExpPtr,
          bits32 * zSigPtr)
{
 int8 shiftCount;

 shiftCount = countLeadingZeros32(aSig) - 8;
 *zSigPtr = aSig << shiftCount;
 *zExpPtr = 1 - shiftCount;

}

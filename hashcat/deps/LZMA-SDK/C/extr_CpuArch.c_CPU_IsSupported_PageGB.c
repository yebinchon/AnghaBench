
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int Cx86cpuid ;
typedef int BoolInt ;


 int False ;
 int MyCPUID (int,int*,int*,int*,int*) ;
 int x86cpuid_CheckAndRead (int *) ;

BoolInt CPU_IsSupported_PageGB()
{
  Cx86cpuid cpuid;
  if (!x86cpuid_CheckAndRead(&cpuid))
    return False;
  {
    UInt32 d[4] = { 0 };
    MyCPUID(0x80000000, &d[0], &d[1], &d[2], &d[3]);
    if (d[0] < 0x80000001)
      return False;
  }
  {
    UInt32 d[4] = { 0 };
    MyCPUID(0x80000001, &d[0], &d[1], &d[2], &d[3]);
    return (d[3] >> 26) & 1;
  }
}

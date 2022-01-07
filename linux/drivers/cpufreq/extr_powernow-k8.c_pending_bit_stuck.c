
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_FIDVID_STATUS ;
 int MSR_S_LO_CHANGE_PENDING ;
 int rdmsr (int ,int,int) ;

__attribute__((used)) static int pending_bit_stuck(void)
{
 u32 lo, hi;

 rdmsr(MSR_FIDVID_STATUS, lo, hi);
 return lo & MSR_S_LO_CHANGE_PENDING ? 1 : 0;
}

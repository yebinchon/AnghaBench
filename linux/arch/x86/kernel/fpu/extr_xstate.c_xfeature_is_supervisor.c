
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int XSTATE_CPUID ;
 int cpuid_count (int ,int,int*,int*,int*,int*) ;

__attribute__((used)) static int xfeature_is_supervisor(int xfeature_nr)
{
 u32 eax, ebx, ecx, edx;

 cpuid_count(XSTATE_CPUID, xfeature_nr, &eax, &ebx, &ecx, &edx);
 return !!(ecx & 1);
}

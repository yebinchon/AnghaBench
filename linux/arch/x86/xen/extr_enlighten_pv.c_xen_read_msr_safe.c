
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



 int X2APIC_ENABLE ;
 int native_read_msr_safe (unsigned int,int*) ;
 scalar_t__ pmu_msr_read (unsigned int,int *,int*) ;

__attribute__((used)) static u64 xen_read_msr_safe(unsigned int msr, int *err)
{
 u64 val;

 if (pmu_msr_read(msr, &val, err))
  return val;

 val = native_read_msr_safe(msr, err);
 switch (msr) {
 case 128:
  val &= ~X2APIC_ENABLE;
  break;
 }
 return val;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EIO ;
 int HYPERVISOR_set_segment_base (unsigned int,int) ;
 unsigned int SEGBASE_FS ;
 unsigned int SEGBASE_GS_KERNEL ;
 unsigned int SEGBASE_GS_USER ;
 int native_write_msr_safe (unsigned int,unsigned int,unsigned int) ;
 int pmu_msr_write (unsigned int,unsigned int,unsigned int,int*) ;

__attribute__((used)) static int xen_write_msr_safe(unsigned int msr, unsigned low, unsigned high)
{
 int ret;

 ret = 0;

 switch (msr) {
 case 129:
 case 137:
 case 130:
 case 128:
 case 134:
 case 132:
 case 133:



  break;

 default:
  if (!pmu_msr_write(msr, low, high, &ret))
   ret = native_write_msr_safe(msr, low, high);
 }

 return ret;
}

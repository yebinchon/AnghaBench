
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev_root; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 unsigned int PVR_POWER8 ;
 unsigned int PVR_POWER8E ;
 unsigned int PVR_POWER8NVL ;
 unsigned int PVR_VER (int ) ;
 int SPRN_PVR ;
 int alloc_cpumask_var (int *,int ) ;
 int cpu_offline_mask ;
 TYPE_1__ cpu_subsys ;
 int dev_attr_subcores_per_core ;
 int device_create_file (int ,int *) ;
 int mfspr (int ) ;
 int set_subcores_per_core (int) ;
 int setup_max_cpus ;
 int threads_per_core ;

__attribute__((used)) static int subcore_init(void)
{
 unsigned pvr_ver;

 pvr_ver = PVR_VER(mfspr(SPRN_PVR));

 if (pvr_ver != PVR_POWER8 &&
     pvr_ver != PVR_POWER8E &&
     pvr_ver != PVR_POWER8NVL)
  return 0;





 if (setup_max_cpus % threads_per_core)
  return 0;

 BUG_ON(!alloc_cpumask_var(&cpu_offline_mask, GFP_KERNEL));

 set_subcores_per_core(1);

 return device_create_file(cpu_subsys.dev_root,
      &dev_attr_subcores_per_core);
}

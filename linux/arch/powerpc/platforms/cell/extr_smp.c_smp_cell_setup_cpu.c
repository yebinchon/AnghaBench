
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DABRX_KERNEL ;
 int DABRX_USER ;
 int SPRN_DABRX ;
 int boot_cpuid ;
 int iic_setup_cpu () ;
 int mtspr (int ,int) ;

__attribute__((used)) static void smp_cell_setup_cpu(int cpu)
{
 if (cpu != boot_cpuid)
  iic_setup_cpu();




 mtspr(SPRN_DABRX, DABRX_KERNEL | DABRX_USER);
}

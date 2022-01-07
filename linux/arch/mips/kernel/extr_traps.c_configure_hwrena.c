
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIPS_HWRENA_CC ;
 int MIPS_HWRENA_CCRES ;
 int MIPS_HWRENA_CPUNUM ;
 int MIPS_HWRENA_SYNCISTEP ;
 int MIPS_HWRENA_ULR ;
 scalar_t__ cpu_has_mips_r2_r6 ;
 scalar_t__ cpu_has_userlocal ;
 int cpu_hwrena_impl_bits ;
 int hwrena ;
 int noulri ;
 int write_c0_hwrena (int) ;

__attribute__((used)) static void configure_hwrena(void)
{
 hwrena = cpu_hwrena_impl_bits;

 if (cpu_has_mips_r2_r6)
  hwrena |= MIPS_HWRENA_CPUNUM |
     MIPS_HWRENA_SYNCISTEP |
     MIPS_HWRENA_CC |
     MIPS_HWRENA_CCRES;

 if (!noulri && cpu_has_userlocal)
  hwrena |= MIPS_HWRENA_ULR;

 if (hwrena)
  write_c0_hwrena(hwrena);
}

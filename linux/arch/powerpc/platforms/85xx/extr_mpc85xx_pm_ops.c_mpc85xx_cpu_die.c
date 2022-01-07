
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HID0_DOZE ;
 int HID0_NAP ;
 int HID0_SLEEP ;
 int MSR_WE ;
 int SPRN_HID0 ;
 int mfmsr () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

__attribute__((used)) static void mpc85xx_cpu_die(int cpu)
{
 u32 tmp;

 tmp = (mfspr(SPRN_HID0) & ~(HID0_DOZE|HID0_SLEEP)) | HID0_NAP;
 mtspr(SPRN_HID0, tmp);


 tmp = mfmsr();
 tmp |= MSR_WE;
 asm volatile(
  "msync\n"
  "mtmsr %0\n"
  "isync\n"
  :
  : "r" (tmp));
}

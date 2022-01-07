
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ARM_DBG_READ (int ,int ,int ,int) ;
 int ARM_DEBUG_ARCH_V6 ;
 int c0 ;
 int pr_warn_once (char*) ;
 int read_cpuid_id () ;

__attribute__((used)) static u8 get_debug_arch(void)
{
 u32 didr;


 if (((read_cpuid_id() >> 16) & 0xf) != 0xf) {
  pr_warn_once("CPUID feature registers not supported. "
        "Assuming v6 debug is present.\n");
  return ARM_DEBUG_ARCH_V6;
 }

 ARM_DBG_READ(c0, c0, 0, didr);
 return (didr >> 16) & 0xf;
}

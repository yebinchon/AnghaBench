
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef unsigned long phys_addr_t ;


 unsigned long MIPS_CMGCRF_BASE ;
 int MIPS_CONF3_CMGCR ;
 unsigned long read_c0_cmgcrbase () ;
 int read_c0_config3 () ;

phys_addr_t __mips_cm_phys_base(void)
{
 u32 config3 = read_c0_config3();
 unsigned long cmgcr;


 if (!(config3 & MIPS_CONF3_CMGCR))
  return 0;


 cmgcr = read_c0_cmgcrbase();
 return (cmgcr & MIPS_CMGCRF_BASE) << (36 - 32);
}

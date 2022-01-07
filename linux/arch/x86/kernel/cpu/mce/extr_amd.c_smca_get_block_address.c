
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (unsigned int) ;
 int MSR_AMD64_SMCA_MCx_MISC (unsigned int) ;
 int MSR_AMD64_SMCA_MCx_MISCy (unsigned int,unsigned int) ;
 int per_cpu (int ,unsigned int) ;
 int smca_misc_banks_map ;

__attribute__((used)) static u32 smca_get_block_address(unsigned int bank, unsigned int block,
      unsigned int cpu)
{
 if (!block)
  return MSR_AMD64_SMCA_MCx_MISC(bank);

 if (!(per_cpu(smca_misc_banks_map, cpu) & BIT(bank)))
  return 0;

 return MSR_AMD64_SMCA_MCx_MISCy(bank, block - 1);
}

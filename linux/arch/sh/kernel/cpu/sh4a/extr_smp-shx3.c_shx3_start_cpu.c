
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RESET_REG (unsigned int) ;
 unsigned long STBCR_LTSLP ;
 unsigned long STBCR_MSTP ;
 int STBCR_REG (unsigned int) ;
 unsigned long STBCR_RESET ;
 scalar_t__ __in_29bit_mode () ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int cpu_relax () ;
 unsigned long virt_to_phys (unsigned long) ;

__attribute__((used)) static void shx3_start_cpu(unsigned int cpu, unsigned long entry_point)
{
 if (__in_29bit_mode())
  __raw_writel(entry_point, RESET_REG(cpu));
 else
  __raw_writel(virt_to_phys(entry_point), RESET_REG(cpu));

 if (!(__raw_readl(STBCR_REG(cpu)) & STBCR_MSTP))
  __raw_writel(STBCR_MSTP, STBCR_REG(cpu));

 while (!(__raw_readl(STBCR_REG(cpu)) & STBCR_MSTP))
  cpu_relax();


 __raw_writel(STBCR_RESET | STBCR_LTSLP, STBCR_REG(cpu));
}

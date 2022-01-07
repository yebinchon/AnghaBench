
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STBCR_MSTP ;
 int STBCR_REG (unsigned int) ;
 int STBCR_RESET ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int cpu_relax () ;

__attribute__((used)) static void shx3_update_boot_vector(unsigned int cpu)
{
 __raw_writel(STBCR_MSTP, STBCR_REG(cpu));
 while (!(__raw_readl(STBCR_REG(cpu)) & STBCR_MSTP))
  cpu_relax();
 __raw_writel(STBCR_RESET, STBCR_REG(cpu));
}

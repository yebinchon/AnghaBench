
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxa3xx_freq_info {int dmcfs; int hss; int sflfs; int smcfs; } ;


 int ACCR ;
 int ACCR_DMCFS (int ) ;
 int ACCR_DMCFS_MASK ;
 int ACCR_HSS (int ) ;
 int ACCR_HSS_MASK ;
 int ACCR_SFLFS (int ) ;
 int ACCR_SFLFS_MASK ;
 int ACCR_SMCFS (int ) ;
 int ACCR_SMCFS_MASK ;
 int ACSR ;
 int cpu_relax () ;

__attribute__((used)) static void __update_bus_freq(struct pxa3xx_freq_info *info)
{
 uint32_t mask;
 uint32_t accr = ACCR;

 mask = ACCR_SMCFS_MASK | ACCR_SFLFS_MASK | ACCR_HSS_MASK |
  ACCR_DMCFS_MASK;

 accr &= ~mask;
 accr |= ACCR_SMCFS(info->smcfs) | ACCR_SFLFS(info->sflfs) |
  ACCR_HSS(info->hss) | ACCR_DMCFS(info->dmcfs);

 ACCR = accr;

 while ((ACSR & mask) != (accr & mask))
  cpu_relax();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_arc_mmu {scalar_t__ ver; scalar_t__ pg_sz_k; scalar_t__ s_pg_sz_m; int pae; } ;
typedef int str ;
struct TYPE_2__ {struct cpuinfo_arc_mmu mmu; } ;


 int ARC_REG_PID ;
 int ARC_REG_SCRATCH_DATA0 ;
 int ARC_REG_TLBPD1HI ;
 int BUILD_BUG_ON (int) ;
 int CONFIG_ARC_HAS_PAE40 ;
 int CONFIG_ARC_KVADDR_SIZE ;
 scalar_t__ CONFIG_ARC_MMU_VER ;
 int CONFIG_TRANSPARENT_HUGEPAGE ;
 int HPAGE_PMD_SIZE ;
 int IS_ALIGNED (int,int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 int MMU_ENABLE ;
 int PAGE_SIZE ;
 int PMD_SIZE ;
 int STACK_TOP ;
 scalar_t__ TO_KB (int ) ;
 scalar_t__ TO_MB (int ) ;
 int arc_mmu_mumbojumbo (int ,char*,int) ;
 TYPE_1__* cpuinfo_arc700 ;
 scalar_t__ is_isa_arcompact () ;
 scalar_t__ is_isa_arcv2 () ;
 scalar_t__ pae40_exist_but_not_enab () ;
 int panic (char*,...) ;
 int pr_info (char*,int ) ;
 size_t smp_processor_id () ;
 int swapper_pg_dir ;
 int write_aux_reg (int ,int ) ;

void arc_mmu_init(void)
{
 struct cpuinfo_arc_mmu *mmu = &cpuinfo_arc700[smp_processor_id()].mmu;
 char str[256];
 int compat = 0;

 pr_info("%s", arc_mmu_mumbojumbo(0, str, sizeof(str)));




 BUILD_BUG_ON(!IS_ALIGNED((CONFIG_ARC_KVADDR_SIZE << 20), PMD_SIZE));





 BUILD_BUG_ON(!IS_ALIGNED(STACK_TOP, PMD_SIZE));
 if (is_isa_arcompact() && mmu->ver == CONFIG_ARC_MMU_VER)
  compat = 1;
 else if (is_isa_arcv2() && mmu->ver >= CONFIG_ARC_MMU_VER)
  compat = 1;

 if (!compat) {
  panic("MMU ver %d doesn't match kernel built for %d...\n",
        mmu->ver, CONFIG_ARC_MMU_VER);
 }

 if (mmu->pg_sz_k != TO_KB(PAGE_SIZE))
  panic("MMU pg size != PAGE_SIZE (%luk)\n", TO_KB(PAGE_SIZE));

 if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE) &&
     mmu->s_pg_sz_m != TO_MB(HPAGE_PMD_SIZE))
  panic("MMU Super pg size != Linux HPAGE_PMD_SIZE (%luM)\n",
        (unsigned long)TO_MB(HPAGE_PMD_SIZE));

 if (IS_ENABLED(CONFIG_ARC_HAS_PAE40) && !mmu->pae)
  panic("Hardware doesn't support PAE40\n");


 write_aux_reg(ARC_REG_PID, MMU_ENABLE);




 write_aux_reg(ARC_REG_SCRATCH_DATA0, swapper_pg_dir);


 if (pae40_exist_but_not_enab())
  write_aux_reg(ARC_REG_TLBPD1HI, 0);
}

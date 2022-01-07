
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int options; } ;


 int CONFIG_64BIT ;
 int CONFIG_PGTABLE_LEVELS ;
 scalar_t__ IS_ENABLED (int ) ;
 int MIPS_CPU_HTW ;
 int MIPS_PWCTL_PWEN_SHIFT ;
 unsigned int MIPS_PWCTL_XU_MASK ;
 unsigned long MIPS_PWFIELD_GDI_MASK ;
 unsigned long MIPS_PWFIELD_GDI_SHIFT ;
 unsigned long MIPS_PWFIELD_MDI_MASK ;
 unsigned long MIPS_PWFIELD_MDI_SHIFT ;
 unsigned long MIPS_PWFIELD_PTEI_MASK ;
 unsigned long MIPS_PWFIELD_PTEI_SHIFT ;
 unsigned long MIPS_PWFIELD_PTI_MASK ;
 unsigned long MIPS_PWFIELD_PTI_SHIFT ;
 unsigned long MIPS_PWSIZE_GDW_SHIFT ;
 unsigned long MIPS_PWSIZE_MDW_SHIFT ;
 unsigned long MIPS_PWSIZE_PS_MASK ;
 unsigned long MIPS_PWSIZE_PTEW_MASK ;
 unsigned long MIPS_PWSIZE_PTEW_SHIFT ;
 unsigned long MIPS_PWSIZE_PTW_SHIFT ;
 unsigned long PAGE_SHIFT ;
 unsigned long PGDIR_SHIFT ;
 unsigned long PGD_T_LOG2 ;
 unsigned long PMD_SHIFT ;
 unsigned long PTE_T_LOG2 ;
 int PTRS_PER_PGD ;
 int PTRS_PER_PMD ;
 int PTRS_PER_PTE ;
 unsigned long _PAGE_GLOBAL_SHIFT ;
 int back_to_back_c0_hazard () ;
 TYPE_1__ current_cpu_data ;
 unsigned long ilog2 (int ) ;
 int pr_info (char*) ;
 int pr_warn (char*,unsigned long) ;
 int print_htw_config () ;
 unsigned long read_c0_pwfield () ;
 int write_c0_pwctl (unsigned int) ;
 int write_c0_pwfield (unsigned long) ;
 int write_c0_pwsize (unsigned long) ;

__attribute__((used)) static void config_htw_params(void)
{
 unsigned long pwfield, pwsize, ptei;
 unsigned int config;
 pwfield = read_c0_pwfield();

 pwfield &= ~MIPS_PWFIELD_GDI_MASK;
 pwfield |= PGDIR_SHIFT << MIPS_PWFIELD_GDI_SHIFT;

 pwfield &= ~MIPS_PWFIELD_PTI_MASK;
 pwfield |= PAGE_SHIFT << MIPS_PWFIELD_PTI_SHIFT;
 if (CONFIG_PGTABLE_LEVELS >= 3) {
  pwfield &= ~MIPS_PWFIELD_MDI_MASK;
  pwfield |= PMD_SHIFT << MIPS_PWFIELD_MDI_SHIFT;
 }

 ptei = _PAGE_GLOBAL_SHIFT << MIPS_PWFIELD_PTEI_SHIFT;
 pwfield |= ptei;
 write_c0_pwfield(pwfield);

 back_to_back_c0_hazard();
 pwfield = read_c0_pwfield();
 if (((pwfield & MIPS_PWFIELD_PTEI_MASK) << MIPS_PWFIELD_PTEI_SHIFT)
  != ptei) {
  pr_warn("Unsupported PTEI field value: 0x%lx. HTW will not be enabled",
   ptei);




  current_cpu_data.options &= ~MIPS_CPU_HTW;
  return;
 }

 pwsize = ilog2(PTRS_PER_PGD) << MIPS_PWSIZE_GDW_SHIFT;
 pwsize |= ilog2(PTRS_PER_PTE) << MIPS_PWSIZE_PTW_SHIFT;
 if (CONFIG_PGTABLE_LEVELS >= 3)
  pwsize |= ilog2(PTRS_PER_PMD) << MIPS_PWSIZE_MDW_SHIFT;


 if (IS_ENABLED(CONFIG_64BIT))
  pwsize |= MIPS_PWSIZE_PS_MASK;

 pwsize |= ((PTE_T_LOG2 - PGD_T_LOG2) << MIPS_PWSIZE_PTEW_SHIFT)
   & MIPS_PWSIZE_PTEW_MASK;

 write_c0_pwsize(pwsize);


 back_to_back_c0_hazard();





 config = 1 << MIPS_PWCTL_PWEN_SHIFT;
 if (IS_ENABLED(CONFIG_64BIT))
  config |= MIPS_PWCTL_XU_MASK;
 write_c0_pwctl(config);
 pr_info("Hardware Page Table Walker enabled\n");

 print_htw_config();
}

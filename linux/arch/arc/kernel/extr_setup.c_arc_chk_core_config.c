
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int fpu_dp; int fpu_sp; int timer1; int timer0; } ;
struct TYPE_7__ {int dsp; } ;
struct TYPE_6__ {scalar_t__ sz; } ;
struct TYPE_5__ {unsigned int base_addr; scalar_t__ sz; } ;
struct cpuinfo_arc {TYPE_4__ extn; TYPE_3__ extn_mpy; TYPE_2__ iccm; TYPE_1__ dccm; } ;


 scalar_t__ CONFIG_ARC_DCCM_SZ ;
 int CONFIG_ARC_FPU_SAVE_RESTORE ;
 int CONFIG_ARC_HAS_ACCL_REGS ;
 scalar_t__ CONFIG_ARC_ICCM_SZ ;
 int IS_ENABLED (int ) ;
 scalar_t__ __arc_dccm_base ;
 struct cpuinfo_arc* cpuinfo_arc700 ;
 scalar_t__ is_isa_arcompact () ;
 int panic (char*,...) ;
 int pr_warn (char*,char*) ;
 size_t smp_processor_id () ;

__attribute__((used)) static void arc_chk_core_config(void)
{
 struct cpuinfo_arc *cpu = &cpuinfo_arc700[smp_processor_id()];
 int saved = 0, present = 0;
 char *opt_nm = ((void*)0);

 if (!cpu->extn.timer0)
  panic("Timer0 is not present!\n");

 if (!cpu->extn.timer1)
  panic("Timer1 is not present!\n");
 if (is_isa_arcompact()) {
  opt_nm = "CONFIG_ARC_FPU_SAVE_RESTORE";
  saved = IS_ENABLED(CONFIG_ARC_FPU_SAVE_RESTORE);


  present = cpu->extn.fpu_dp;
 } else {
  opt_nm = "CONFIG_ARC_HAS_ACCL_REGS";
  saved = IS_ENABLED(CONFIG_ARC_HAS_ACCL_REGS);


  present = cpu->extn_mpy.dsp | cpu->extn.fpu_sp | cpu->extn.fpu_dp;
 }

 if (present && !saved)
  pr_warn("Enable %s for working apps\n", opt_nm);
 else if (!present && saved)
  panic("Disable %s, hardware NOT present\n", opt_nm);
}

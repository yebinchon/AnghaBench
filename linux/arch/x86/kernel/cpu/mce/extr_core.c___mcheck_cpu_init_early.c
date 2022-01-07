
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpuinfo_x86 {scalar_t__ x86_vendor; } ;
struct TYPE_4__ {int overflow_recov; int succor; int smca; } ;
struct TYPE_3__ {int misc; int addr; int status; int ctl; } ;


 int X86_FEATURE_OVERFLOW_RECOV ;
 int X86_FEATURE_SMCA ;
 int X86_FEATURE_SUCCOR ;
 scalar_t__ X86_VENDOR_AMD ;
 scalar_t__ X86_VENDOR_HYGON ;
 int cpu_has (struct cpuinfo_x86*,int ) ;
 TYPE_2__ mce_flags ;
 TYPE_1__ msr_ops ;
 int smca_addr_reg ;
 int smca_ctl_reg ;
 int smca_misc_reg ;
 int smca_status_reg ;

__attribute__((used)) static void __mcheck_cpu_init_early(struct cpuinfo_x86 *c)
{
 if (c->x86_vendor == X86_VENDOR_AMD || c->x86_vendor == X86_VENDOR_HYGON) {
  mce_flags.overflow_recov = !!cpu_has(c, X86_FEATURE_OVERFLOW_RECOV);
  mce_flags.succor = !!cpu_has(c, X86_FEATURE_SUCCOR);
  mce_flags.smca = !!cpu_has(c, X86_FEATURE_SMCA);

  if (mce_flags.smca) {
   msr_ops.ctl = smca_ctl_reg;
   msr_ops.status = smca_status_reg;
   msr_ops.addr = smca_addr_reg;
   msr_ops.misc = smca_misc_reg;
  }
 }
}

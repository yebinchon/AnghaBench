
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int int_parm_long; } ;
struct gmap {unsigned long asce; } ;
struct TYPE_2__ {unsigned long user_asce; unsigned long vdso_asce; unsigned long kernel_asce; scalar_t__ gmap; } ;




 TYPE_1__ S390_lowcore ;


 int __FAIL_ADDR_MASK ;
 int dump_pagetable (unsigned long,int) ;
 int get_fault_type (struct pt_regs*) ;
 int pr_alert (char*,...) ;
 int pr_cont (char*) ;
 int unreachable () ;

__attribute__((used)) static void dump_fault_info(struct pt_regs *regs)
{
 unsigned long asce;

 pr_alert("Failing address: %016lx TEID: %016lx\n",
   regs->int_parm_long & __FAIL_ADDR_MASK, regs->int_parm_long);
 pr_alert("Fault in ");
 switch (regs->int_parm_long & 3) {
 case 3:
  pr_cont("home space ");
  break;
 case 2:
  pr_cont("secondary space ");
  break;
 case 1:
  pr_cont("access register ");
  break;
 case 0:
  pr_cont("primary space ");
  break;
 }
 pr_cont("mode while using ");
 switch (get_fault_type(regs)) {
 case 129:
  asce = S390_lowcore.user_asce;
  pr_cont("user ");
  break;
 case 128:
  asce = S390_lowcore.vdso_asce;
  pr_cont("vdso ");
  break;
 case 131:
  asce = ((struct gmap *) S390_lowcore.gmap)->asce;
  pr_cont("gmap ");
  break;
 case 130:
  asce = S390_lowcore.kernel_asce;
  pr_cont("kernel ");
  break;
 default:
  unreachable();
 }
 pr_cont("ASCE.\n");
 dump_pagetable(asce, regs->int_parm_long & __FAIL_ADDR_MASK);
}

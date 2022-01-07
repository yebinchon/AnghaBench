
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int nip; } ;
struct mce_error_info {int ignore_event; } ;
struct exception_table_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* mce_check_early_recovery ) (struct pt_regs*) ;} ;


 int extable_fixup (struct exception_table_entry const*) ;
 TYPE_1__ ppc_md ;
 struct exception_table_entry* search_kernel_exception_table (int ) ;
 scalar_t__ stub1 (struct pt_regs*) ;

__attribute__((used)) static long mce_handle_ue_error(struct pt_regs *regs,
    struct mce_error_info *mce_err)
{
 long handled = 0;
 const struct exception_table_entry *entry;

 entry = search_kernel_exception_table(regs->nip);
 if (entry) {
  mce_err->ignore_event = 1;
  regs->nip = extable_fixup(entry);
  return 1;
 }
 if (ppc_md.mce_check_early_recovery) {
  if (ppc_md.mce_check_early_recovery(regs))
   handled = 1;
 }
 return handled;
}

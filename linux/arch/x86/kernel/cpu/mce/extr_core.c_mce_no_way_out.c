
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct mce {int status; int bank; } ;
struct TYPE_4__ {int tolerant; } ;
struct TYPE_3__ {int (* status ) (int) ;} ;


 scalar_t__ MCE_PANIC_SEVERITY ;
 int MCI_STATUS_VAL ;
 int __set_bit (int,unsigned long*) ;
 TYPE_2__ mca_cfg ;
 int mce_num_banks ;
 int mce_rdmsrl (int ) ;
 int mce_read_aux (struct mce*,int) ;
 scalar_t__ mce_severity (struct mce*,int ,char**,int) ;
 TYPE_1__ msr_ops ;
 int quirk_no_way_out (int,struct mce*,struct pt_regs*) ;
 int stub1 (int) ;
 int this_cpu_read (int ) ;

__attribute__((used)) static int mce_no_way_out(struct mce *m, char **msg, unsigned long *validp,
     struct pt_regs *regs)
{
 char *tmp;
 int i;

 for (i = 0; i < this_cpu_read(mce_num_banks); i++) {
  m->status = mce_rdmsrl(msr_ops.status(i));
  if (!(m->status & MCI_STATUS_VAL))
   continue;

  __set_bit(i, validp);
  if (quirk_no_way_out)
   quirk_no_way_out(i, m, regs);

  if (mce_severity(m, mca_cfg.tolerant, &tmp, 1) >= MCE_PANIC_SEVERITY) {
   m->bank = i;
   mce_read_aux(m, i);
   *msg = tmp;
   return 1;
  }
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mce_bank {int ctl; } ;
struct mce {int bank; int status; int severity; scalar_t__ addr; scalar_t__ misc; } ;
struct mca_config {int tolerant; scalar_t__ ser; } ;
struct TYPE_2__ {int (* status ) (int) ;} ;


 int LOCKDEP_NOW_UNRELIABLE ;
 int MCE_KEEP_SEVERITY ;
 int MCE_NO_SEVERITY ;
 int MCE_UCNA_SEVERITY ;
 int MCI_STATUS_S ;
 int MCI_STATUS_UC ;
 int MCI_STATUS_VAL ;
 int TAINT_MACHINE_CHECK ;
 int __clear_bit (int,unsigned long*) ;
 int __set_bit (int,unsigned long*) ;
 int add_taint (int ,int ) ;
 struct mca_config mca_cfg ;
 int mce_banks_array ;
 int mce_log (struct mce*) ;
 int mce_num_banks ;
 int mce_rdmsrl (int ) ;
 int mce_read_aux (struct mce*,int) ;
 int mce_severity (struct mce*,int ,int *,int) ;
 TYPE_1__ msr_ops ;
 int stub1 (int) ;
 int test_bit (int,unsigned long*) ;
 struct mce_bank* this_cpu_ptr (int ) ;
 int this_cpu_read (int ) ;

__attribute__((used)) static void __mc_scan_banks(struct mce *m, struct mce *final,
       unsigned long *toclear, unsigned long *valid_banks,
       int no_way_out, int *worst)
{
 struct mce_bank *mce_banks = this_cpu_ptr(mce_banks_array);
 struct mca_config *cfg = &mca_cfg;
 int severity, i;

 for (i = 0; i < this_cpu_read(mce_num_banks); i++) {
  __clear_bit(i, toclear);
  if (!test_bit(i, valid_banks))
   continue;

  if (!mce_banks[i].ctl)
   continue;

  m->misc = 0;
  m->addr = 0;
  m->bank = i;

  m->status = mce_rdmsrl(msr_ops.status(i));
  if (!(m->status & MCI_STATUS_VAL))
   continue;





  if (!(m->status & (cfg->ser ? MCI_STATUS_S : MCI_STATUS_UC)) &&
   !no_way_out)
   continue;


  add_taint(TAINT_MACHINE_CHECK, LOCKDEP_NOW_UNRELIABLE);

  severity = mce_severity(m, cfg->tolerant, ((void*)0), 1);





  if ((severity == MCE_KEEP_SEVERITY ||
       severity == MCE_UCNA_SEVERITY) && !no_way_out)
   continue;

  __set_bit(i, toclear);


  if (severity == MCE_NO_SEVERITY)
   continue;

  mce_read_aux(m, i);


  m->severity = severity;

  mce_log(m);

  if (severity > *worst) {
   *final = *m;
   *worst = severity;
  }
 }


 *m = *final;
}

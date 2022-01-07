
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mce_bank {int ctl; } ;
struct mce {int bank; int status; int severity; scalar_t__ addr; scalar_t__ misc; int tsc; } ;
typedef int mce_banks_t ;
typedef enum mcp_flags { ____Placeholder_mcp_flags } mcp_flags ;
struct TYPE_4__ {int dont_log_ce; int tolerant; int ser; } ;
struct TYPE_3__ {int (* status ) (int) ;} ;


 int MCI_STATUS_EN ;
 int MCI_STATUS_PCC ;
 int MCI_STATUS_S ;
 int MCI_STATUS_UC ;
 int MCI_STATUS_VAL ;
 int MCP_DONTLOG ;
 int MCP_TIMESTAMP ;
 int MCP_UC ;
 int barrier () ;
 TYPE_2__ mca_cfg ;
 int mce_banks_array ;
 int mce_gather_info (struct mce*,int *) ;
 int mce_gen_pool_add (struct mce*) ;
 int mce_log (struct mce*) ;
 int mce_num_banks ;
 int mce_poll_count ;
 int mce_rdmsrl (int ) ;
 int mce_read_aux (struct mce*,int) ;
 int mce_schedule_work () ;
 int mce_severity (struct mce*,int ,int *,int) ;
 scalar_t__ mce_usable_address (struct mce*) ;
 int mce_wrmsrl (int ,int ) ;
 TYPE_1__ msr_ops ;
 int rdtsc () ;
 int stub1 (int) ;
 int stub2 (int) ;
 int sync_core () ;
 int test_bit (int,int ) ;
 int this_cpu_inc (int ) ;
 struct mce_bank* this_cpu_ptr (int ) ;
 int this_cpu_read (int ) ;

bool machine_check_poll(enum mcp_flags flags, mce_banks_t *b)
{
 struct mce_bank *mce_banks = this_cpu_ptr(mce_banks_array);
 bool error_seen = 0;
 struct mce m;
 int i;

 this_cpu_inc(mce_poll_count);

 mce_gather_info(&m, ((void*)0));

 if (flags & MCP_TIMESTAMP)
  m.tsc = rdtsc();

 for (i = 0; i < this_cpu_read(mce_num_banks); i++) {
  if (!mce_banks[i].ctl || !test_bit(i, *b))
   continue;

  m.misc = 0;
  m.addr = 0;
  m.bank = i;

  barrier();
  m.status = mce_rdmsrl(msr_ops.status(i));


  if (!(m.status & MCI_STATUS_VAL))
   continue;





  if ((flags & MCP_UC) || !(m.status & MCI_STATUS_UC))
   goto log_it;







  if (!mca_cfg.ser) {
   if (m.status & MCI_STATUS_UC)
    continue;
   goto log_it;
  }


  if (!(m.status & MCI_STATUS_EN))
   goto log_it;





  if (!(m.status & MCI_STATUS_PCC) && !(m.status & MCI_STATUS_S))
   goto log_it;






  continue;

log_it:
  error_seen = 1;

  mce_read_aux(&m, i);

  m.severity = mce_severity(&m, mca_cfg.tolerant, ((void*)0), 0);





  if (!(flags & MCP_DONTLOG) && !mca_cfg.dont_log_ce)
   mce_log(&m);
  else if (mce_usable_address(&m)) {





   if (!mce_gen_pool_add(&m))
    mce_schedule_work();
  }




  mce_wrmsrl(msr_ops.status(i), 0);
 }






 sync_core();

 return error_seen;
}

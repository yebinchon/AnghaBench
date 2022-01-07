
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {int dummy; } ;
struct pt_regs {int dummy; } ;


 int RTAS_DISP_FULLY_RECOVERED ;
 scalar_t__ fwnmi_active ;
 struct rtas_error_log* fwnmi_get_errinfo (struct pt_regs*) ;
 int fwnmi_release_errinfo () ;
 int irq_work_queue (int *) ;
 int mce_errlog_process_work ;
 int mce_handle_error (struct pt_regs*,struct rtas_error_log*) ;

long pseries_machine_check_realmode(struct pt_regs *regs)
{
 struct rtas_error_log *errp;
 int disposition;

 if (fwnmi_active) {
  errp = fwnmi_get_errinfo(regs);





  disposition = mce_handle_error(regs, errp);
  fwnmi_release_errinfo();


  irq_work_queue(&mce_errlog_process_work);

  if (disposition == RTAS_DISP_FULLY_RECOVERED)
   return 1;
 }

 return 0;
}

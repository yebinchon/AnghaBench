
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {int dummy; } ;
typedef int irqreturn_t ;


 int ERR_TYPE_RTAS_LOG ;
 int IRQ_HANDLED ;
 int RTAS_INTERNAL_ERROR ;
 scalar_t__ RTAS_SEVERITY_ERROR_SYNC ;
 int RTAS_VECTOR_EXTERNAL_INTERRUPT ;
 int __pa (scalar_t__*) ;
 int emergency_sync () ;
 int kernel_power_off () ;
 int log_error (scalar_t__,int ,int) ;
 int pr_emerg (char*) ;
 int pr_err (char*) ;
 int ras_check_exception_token ;
 scalar_t__ ras_log_buf ;
 int ras_log_buf_lock ;
 int rtas_call (int ,int,int,int *,int ,int ,int ,int,int ,int ) ;
 scalar_t__ rtas_error_severity (struct rtas_error_log*) ;
 int rtas_get_error_log_max () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virq_to_hw (int) ;

__attribute__((used)) static irqreturn_t ras_error_interrupt(int irq, void *dev_id)
{
 struct rtas_error_log *rtas_elog;
 int status;
 int fatal;

 spin_lock(&ras_log_buf_lock);

 status = rtas_call(ras_check_exception_token, 6, 1, ((void*)0),
      RTAS_VECTOR_EXTERNAL_INTERRUPT,
      virq_to_hw(irq),
      RTAS_INTERNAL_ERROR, 1 ,
      __pa(&ras_log_buf),
    rtas_get_error_log_max());

 rtas_elog = (struct rtas_error_log *)ras_log_buf;

 if (status == 0 &&
     rtas_error_severity(rtas_elog) >= RTAS_SEVERITY_ERROR_SYNC)
  fatal = 1;
 else
  fatal = 0;


 log_error(ras_log_buf, ERR_TYPE_RTAS_LOG, fatal);

 if (fatal) {
  pr_emerg("Fatal hardware error detected. Check RTAS error"
    " log for details. Powering off immediately\n");
  emergency_sync();
  kernel_power_off();
 } else {
  pr_err("Recoverable hardware error detected\n");
 }

 spin_unlock(&ras_log_buf_lock);
 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {int dummy; } ;
typedef int irqreturn_t ;


 int EPOW_SENSOR_INDEX ;
 int EPOW_SENSOR_TOKEN ;
 int ERR_TYPE_RTAS_LOG ;
 int IRQ_HANDLED ;
 int RTAS_EPOW_WARNING ;
 int RTAS_VECTOR_EXTERNAL_INTERRUPT ;
 int __pa (scalar_t__*) ;
 int log_error (scalar_t__,int ,int ) ;
 int ras_check_exception_token ;
 scalar_t__ ras_log_buf ;
 int ras_log_buf_lock ;
 int rtas_call (int ,int,int,int *,int ,int ,int ,int,int ,int ) ;
 int rtas_get_error_log_max () ;
 int rtas_get_sensor_fast (int ,int ,int*) ;
 int rtas_parse_epow_errlog (struct rtas_error_log*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virq_to_hw (int) ;

__attribute__((used)) static irqreturn_t ras_epow_interrupt(int irq, void *dev_id)
{
 int status;
 int state;
 int critical;

 status = rtas_get_sensor_fast(EPOW_SENSOR_TOKEN, EPOW_SENSOR_INDEX,
          &state);

 if (state > 3)
  critical = 1;
 else
  critical = 0;

 spin_lock(&ras_log_buf_lock);

 status = rtas_call(ras_check_exception_token, 6, 1, ((void*)0),
      RTAS_VECTOR_EXTERNAL_INTERRUPT,
      virq_to_hw(irq),
      RTAS_EPOW_WARNING,
      critical, __pa(&ras_log_buf),
    rtas_get_error_log_max());

 log_error(ras_log_buf, ERR_TYPE_RTAS_LOG, 0);

 rtas_parse_epow_errlog((struct rtas_error_log *)ras_log_buf);

 spin_unlock(&ras_log_buf_lock);
 return IRQ_HANDLED;
}

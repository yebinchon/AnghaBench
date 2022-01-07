
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {int dummy; } ;
struct pseries_hp_errorlog {scalar_t__ resource; } ;
struct pseries_errorlog {scalar_t__ data; } ;
typedef int irqreturn_t ;


 int ERR_TYPE_RTAS_LOG ;
 int IRQ_HANDLED ;
 int PSERIES_ELOG_SECT_ID_HOTPLUG ;
 scalar_t__ PSERIES_HP_ELOG_RESOURCE_CPU ;
 scalar_t__ PSERIES_HP_ELOG_RESOURCE_MEM ;
 scalar_t__ PSERIES_HP_ELOG_RESOURCE_PMEM ;
 int RTAS_HOTPLUG_EVENTS ;
 int RTAS_VECTOR_EXTERNAL_INTERRUPT ;
 int __pa (scalar_t__*) ;
 struct pseries_errorlog* get_pseries_errorlog (struct rtas_error_log*,int ) ;
 int log_error (scalar_t__,int ,int ) ;
 int queue_hotplug_event (struct pseries_hp_errorlog*) ;
 int ras_check_exception_token ;
 scalar_t__ ras_log_buf ;
 int ras_log_buf_lock ;
 int rtas_call (int ,int,int,int *,int ,int ,int ,int ,int ,int ) ;
 int rtas_get_error_log_max () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virq_to_hw (int) ;

__attribute__((used)) static irqreturn_t ras_hotplug_interrupt(int irq, void *dev_id)
{
 struct pseries_errorlog *pseries_log;
 struct pseries_hp_errorlog *hp_elog;

 spin_lock(&ras_log_buf_lock);

 rtas_call(ras_check_exception_token, 6, 1, ((void*)0),
    RTAS_VECTOR_EXTERNAL_INTERRUPT, virq_to_hw(irq),
    RTAS_HOTPLUG_EVENTS, 0, __pa(&ras_log_buf),
    rtas_get_error_log_max());

 pseries_log = get_pseries_errorlog((struct rtas_error_log *)ras_log_buf,
        PSERIES_ELOG_SECT_ID_HOTPLUG);
 hp_elog = (struct pseries_hp_errorlog *)pseries_log->data;





 if (hp_elog->resource == PSERIES_HP_ELOG_RESOURCE_MEM ||
     hp_elog->resource == PSERIES_HP_ELOG_RESOURCE_CPU ||
     hp_elog->resource == PSERIES_HP_ELOG_RESOURCE_PMEM)
  queue_hotplug_event(hp_elog);
 else
  log_error(ras_log_buf, ERR_TYPE_RTAS_LOG, 0);

 spin_unlock(&ras_log_buf_lock);
 return IRQ_HANDLED;
}

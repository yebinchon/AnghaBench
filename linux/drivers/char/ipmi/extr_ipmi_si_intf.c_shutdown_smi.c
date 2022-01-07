
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* io_cleanup ) (TYPE_2__*) ;int (* addr_source_cleanup ) (TYPE_2__*) ;int (* irq_cleanup ) (TYPE_2__*) ;scalar_t__ dev; } ;
struct smi_info {int dev_group_added; int interrupt_disabled; scalar_t__ si_state; int * intf; int * si_sm; TYPE_2__ io; TYPE_1__* handlers; scalar_t__ curr_msg; } ;
struct TYPE_5__ {int (* cleanup ) (int *) ;} ;


 scalar_t__ SI_NORMAL ;
 int dev_set_drvdata (scalar_t__,int *) ;
 int device_remove_group (scalar_t__,int *) ;
 int disable_si_irq (struct smi_info*) ;
 int ipmi_si_dev_attr_group ;
 int kfree (int *) ;
 int poll (struct smi_info*) ;
 int schedule_timeout_uninterruptible (int) ;
 int stop_timer_and_thread (struct smi_info*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (int *) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;
 int synchronize_rcu () ;

__attribute__((used)) static void shutdown_smi(void *send_info)
{
 struct smi_info *smi_info = send_info;

 if (smi_info->dev_group_added) {
  device_remove_group(smi_info->io.dev, &ipmi_si_dev_attr_group);
  smi_info->dev_group_added = 0;
 }
 if (smi_info->io.dev)
  dev_set_drvdata(smi_info->io.dev, ((void*)0));





 smi_info->interrupt_disabled = 1;
 if (smi_info->io.irq_cleanup) {
  smi_info->io.irq_cleanup(&smi_info->io);
  smi_info->io.irq_cleanup = ((void*)0);
 }
 stop_timer_and_thread(smi_info);






 synchronize_rcu();






 while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)) {
  poll(smi_info);
  schedule_timeout_uninterruptible(1);
 }
 if (smi_info->handlers)
  disable_si_irq(smi_info);
 while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)) {
  poll(smi_info);
  schedule_timeout_uninterruptible(1);
 }
 if (smi_info->handlers)
  smi_info->handlers->cleanup(smi_info->si_sm);

 if (smi_info->io.addr_source_cleanup) {
  smi_info->io.addr_source_cleanup(&smi_info->io);
  smi_info->io.addr_source_cleanup = ((void*)0);
 }
 if (smi_info->io.io_cleanup) {
  smi_info->io.io_cleanup(&smi_info->io);
  smi_info->io.io_cleanup = ((void*)0);
 }

 kfree(smi_info->si_sm);
 smi_info->si_sm = ((void*)0);

 smi_info->intf = ((void*)0);
}

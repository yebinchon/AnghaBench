
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ si_type; int dev; int irq; int (* irq_setup ) (TYPE_1__*) ;struct smi_info* irq_handler_data; } ;
struct smi_info {int timer_can_start; size_t si_num; int * thread; TYPE_1__ io; int si_timer; struct ipmi_smi* intf; } ;
struct ipmi_smi {int dummy; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ SI_BT ;
 scalar_t__ SI_TIMEOUT_JIFFIES ;
 int dev_notice (int ,char*,int ) ;
 int* force_kipmid ;
 int ipmi_thread ;
 scalar_t__ jiffies ;
 int * kthread_run (int ,struct smi_info*,char*,size_t) ;
 size_t num_force_kipmid ;
 int smi_mod_timer (struct smi_info*,scalar_t__) ;
 int smi_timeout ;
 int stub1 (TYPE_1__*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int smi_start_processing(void *send_info,
    struct ipmi_smi *intf)
{
 struct smi_info *new_smi = send_info;
 int enable = 0;

 new_smi->intf = intf;


 timer_setup(&new_smi->si_timer, smi_timeout, 0);
 new_smi->timer_can_start = 1;
 smi_mod_timer(new_smi, jiffies + SI_TIMEOUT_JIFFIES);


 if (new_smi->io.irq_setup) {
  new_smi->io.irq_handler_data = new_smi;
  new_smi->io.irq_setup(&new_smi->io);
 }




 if (new_smi->si_num < num_force_kipmid)
  enable = force_kipmid[new_smi->si_num];




 else if ((new_smi->io.si_type != SI_BT) && (!new_smi->io.irq))
  enable = 1;

 if (enable) {
  new_smi->thread = kthread_run(ipmi_thread, new_smi,
           "kipmi%d", new_smi->si_num);
  if (IS_ERR(new_smi->thread)) {
   dev_notice(new_smi->io.dev, "Could not start"
       " kernel thread due to error %ld, only using"
       " timers to drive the interface\n",
       PTR_ERR(new_smi->thread));
   new_smi->thread = ((void*)0);
  }
 }

 return 0;
}

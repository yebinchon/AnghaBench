
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi {int recv_tasklet; int watchdog_pretimeouts_to_deliver; scalar_t__ in_shutdown; } ;


 int atomic_set (int *,int) ;
 int tasklet_schedule (int *) ;

void ipmi_smi_watchdog_pretimeout(struct ipmi_smi *intf)
{
 if (intf->in_shutdown)
  return;

 atomic_set(&intf->watchdog_pretimeouts_to_deliver, 1);
 tasklet_schedule(&intf->recv_tasklet);
}

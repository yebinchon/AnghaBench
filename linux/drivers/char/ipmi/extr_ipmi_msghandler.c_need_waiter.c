
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi {int dummy; } ;


 scalar_t__ IPMI_TIMEOUT_JIFFIES ;
 int ipmi_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_pending (int *) ;

__attribute__((used)) static void need_waiter(struct ipmi_smi *intf)
{

 if (!timer_pending(&ipmi_timer))
  mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);
}

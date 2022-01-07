
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 unsigned long POST_RATE_CHANGE ;
 unsigned long PRE_RATE_CHANGE ;
 int udelay (int) ;

__attribute__((used)) static int g12a_cpu_clk_mux_notifier_cb(struct notifier_block *nb,
     unsigned long event, void *data)
{
 if (event == POST_RATE_CHANGE || event == PRE_RATE_CHANGE) {

  udelay(100);
  return NOTIFY_OK;
 }

 return NOTIFY_DONE;
}

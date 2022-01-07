
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct clk_notifier_data {int new_rate; } ;


 int NOTIFY_OK ;
 unsigned long POST_RATE_CHANGE ;
 int on_each_cpu (int ,void*,int) ;
 int twd_update_frequency ;

__attribute__((used)) static int twd_rate_change(struct notifier_block *nb,
 unsigned long flags, void *data)
{
 struct clk_notifier_data *cnd = data;






 if (flags == POST_RATE_CHANGE)
  on_each_cpu(twd_update_frequency,
      (void *)&cnd->new_rate, 1);

 return NOTIFY_OK;
}

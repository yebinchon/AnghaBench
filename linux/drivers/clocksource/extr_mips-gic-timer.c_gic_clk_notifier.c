
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct clk_notifier_data {scalar_t__ new_rate; } ;


 int NOTIFY_OK ;
 unsigned long POST_RATE_CHANGE ;
 int gic_update_frequency ;
 int on_each_cpu (int ,void*,int) ;

__attribute__((used)) static int gic_clk_notifier(struct notifier_block *nb, unsigned long action,
       void *data)
{
 struct clk_notifier_data *cnd = data;

 if (action == POST_RATE_CHANGE)
  on_each_cpu(gic_update_frequency, (void *)cnd->new_rate, 1);

 return NOTIFY_OK;
}

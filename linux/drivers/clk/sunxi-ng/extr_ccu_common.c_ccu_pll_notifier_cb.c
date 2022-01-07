
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct ccu_pll_nb {int lock; int common; int enable; } ;


 unsigned long POST_RATE_CHANGE ;
 int ccu_gate_helper_disable (int ,int ) ;
 int ccu_gate_helper_enable (int ,int ) ;
 int ccu_helper_wait_for_lock (int ,int ) ;
 int notifier_from_errno (int) ;
 struct ccu_pll_nb* to_ccu_pll_nb (struct notifier_block*) ;

__attribute__((used)) static int ccu_pll_notifier_cb(struct notifier_block *nb,
          unsigned long event, void *data)
{
 struct ccu_pll_nb *pll = to_ccu_pll_nb(nb);
 int ret = 0;

 if (event != POST_RATE_CHANGE)
  goto out;

 ccu_gate_helper_disable(pll->common, pll->enable);

 ret = ccu_gate_helper_enable(pll->common, pll->enable);
 if (ret)
  goto out;

 ccu_helper_wait_for_lock(pll->common, pll->lock);

out:
 return notifier_from_errno(ret);
}

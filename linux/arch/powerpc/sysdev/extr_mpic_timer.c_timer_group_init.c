
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_group_priv {int flags; void* group_tcr; void* regs; int node; int lock; } ;
struct device_node {int dummy; } ;


 int FSL_GLOBAL_TIMER ;
 int GFP_KERNEL ;
 int MPIC_TIMER_TCR_CLKDIV ;
 int iounmap (void*) ;
 int kfree (struct timer_group_priv*) ;
 struct timer_group_priv* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 void* of_iomap (struct device_node*,int ) ;
 int pr_err (char*,struct device_node*) ;
 int setbits32 (void*,int ) ;
 int spin_lock_init (int *) ;
 int timer_group_get_freq (struct device_node*,struct timer_group_priv*) ;
 int timer_group_get_irq (struct device_node*,struct timer_group_priv*) ;
 int timer_group_list ;

__attribute__((used)) static void timer_group_init(struct device_node *np)
{
 struct timer_group_priv *priv;
 unsigned int i = 0;
 int ret;

 priv = kzalloc(sizeof(struct timer_group_priv), GFP_KERNEL);
 if (!priv) {
  pr_err("%pOF: cannot allocate memory for group.\n", np);
  return;
 }

 if (of_device_is_compatible(np, "fsl,mpic-global-timer"))
  priv->flags |= FSL_GLOBAL_TIMER;

 priv->regs = of_iomap(np, i++);
 if (!priv->regs) {
  pr_err("%pOF: cannot ioremap timer register address.\n", np);
  goto out;
 }

 if (priv->flags & FSL_GLOBAL_TIMER) {
  priv->group_tcr = of_iomap(np, i++);
  if (!priv->group_tcr) {
   pr_err("%pOF: cannot ioremap tcr address.\n", np);
   goto out;
  }
 }

 ret = timer_group_get_freq(np, priv);
 if (ret < 0) {
  pr_err("%pOF: cannot get timer frequency.\n", np);
  goto out;
 }

 ret = timer_group_get_irq(np, priv);
 if (ret < 0) {
  pr_err("%pOF: cannot get timer irqs.\n", np);
  goto out;
 }

 spin_lock_init(&priv->lock);


 if (priv->flags & FSL_GLOBAL_TIMER)
  setbits32(priv->group_tcr, MPIC_TIMER_TCR_CLKDIV);

 list_add_tail(&priv->node, &timer_group_list);

 return;

out:
 if (priv->regs)
  iounmap(priv->regs);

 if (priv->group_tcr)
  iounmap(priv->group_tcr);

 kfree(priv);
}

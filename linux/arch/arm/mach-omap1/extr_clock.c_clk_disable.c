
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ usecount; int name; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int WARN_ON (int) ;
 int clockfw_lock ;
 int omap1_clk_disable (struct clk*) ;
 int pr_err (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void clk_disable(struct clk *clk)
{
 unsigned long flags;

 if (clk == ((void*)0) || IS_ERR(clk))
  return;

 spin_lock_irqsave(&clockfw_lock, flags);
 if (clk->usecount == 0) {
  pr_err("Trying disable clock %s with 0 usecount\n",
         clk->name);
  WARN_ON(1);
  goto out;
 }

 omap1_clk_disable(clk);

out:
 spin_unlock_irqrestore(&clockfw_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleep_save {int reg; int val; } ;


 int pr_debug (char*,int ,int ,int ) ;
 int readl_relaxed (int ) ;
 int writel_relaxed (int ,int ) ;

void s3c_pm_do_restore(const struct sleep_save *ptr, int count)
{
 for (; count > 0; count--, ptr++) {
  pr_debug("restore %p (restore %08lx, was %08x)\n",
    ptr->reg, ptr->val, readl_relaxed(ptr->reg));

  writel_relaxed(ptr->val, ptr->reg);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleep_save {int val; int reg; } ;


 int S3C_PMDBG (char*,int ,int ) ;
 int readl_relaxed (int ) ;

void s3c_pm_do_save(struct sleep_save *ptr, int count)
{
 for (; count > 0; count--, ptr++) {
  ptr->val = readl_relaxed(ptr->reg);
  S3C_PMDBG("saved %p value %08lx\n", ptr->reg, ptr->val);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int addr; int mcgstatus; } ;


 int MCG_STATUS_RIPV ;
 int MF_ACTION_REQUIRED ;
 int MF_MUST_KILL ;
 int PAGE_SHIFT ;
 int memory_failure (int,int) ;
 int pr_err (char*,...) ;
 int set_mce_nospec (int) ;

__attribute__((used)) static int do_memory_failure(struct mce *m)
{
 int flags = MF_ACTION_REQUIRED;
 int ret;

 pr_err("Uncorrected hardware memory error in user-access at %llx", m->addr);
 if (!(m->mcgstatus & MCG_STATUS_RIPV))
  flags |= MF_MUST_KILL;
 ret = memory_failure(m->addr >> PAGE_SHIFT, flags);
 if (ret)
  pr_err("Memory error not recovered");
 else
  set_mce_nospec(m->addr >> PAGE_SHIFT);
 return ret;
}

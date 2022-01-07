
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fapll_data {int name; int base; } ;


 int ETIMEDOUT ;
 int FAPLL_MAIN_LOCK ;
 int FAPLL_MAX_RETRIES ;
 int pr_err (char*,int ) ;
 int readl_relaxed (int ) ;
 int udelay (int) ;

__attribute__((used)) static int ti_fapll_wait_lock(struct fapll_data *fd)
{
 int retries = FAPLL_MAX_RETRIES;
 u32 v;

 while ((v = readl_relaxed(fd->base))) {
  if (v & FAPLL_MAIN_LOCK)
   return 0;

  if (retries-- <= 0)
   break;

  udelay(1);
 }

 pr_err("%s failed to lock\n", fd->name);

 return -ETIMEDOUT;
}

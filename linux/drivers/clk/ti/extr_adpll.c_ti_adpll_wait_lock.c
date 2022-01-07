
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adpll_data {int dev; } ;


 int ADPLL_MAX_RETRIES ;
 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 scalar_t__ ti_adpll_is_locked (struct ti_adpll_data*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ti_adpll_wait_lock(struct ti_adpll_data *d)
{
 int retries = ADPLL_MAX_RETRIES;

 do {
  if (ti_adpll_is_locked(d))
   return 0;
  usleep_range(200, 300);
 } while (retries--);

 dev_err(d->dev, "pll failed to lock\n");
 return -ETIMEDOUT;
}

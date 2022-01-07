
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {TYPE_1__* pdev; int timer; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ HZ ;
 int dev_err (int *,char*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int skd_timer_tick ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int skd_start_timer(struct skd_device *skdev)
{
 int rc;

 timer_setup(&skdev->timer, skd_timer_tick, 0);

 rc = mod_timer(&skdev->timer, (jiffies + HZ));
 if (rc)
  dev_err(&skdev->pdev->dev, "failed to start timer %d\n", rc);
 return rc;
}

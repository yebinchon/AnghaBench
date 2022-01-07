
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em_sti_priv {TYPE_1__* pdev; } ;
struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int USER_CLOCKEVENT ;
 struct em_sti_priv* ced_to_em_sti (struct clock_event_device*) ;
 int dev_info (int *,char*) ;
 int em_sti_start (struct em_sti_priv*,int ) ;

__attribute__((used)) static int em_sti_clock_event_set_oneshot(struct clock_event_device *ced)
{
 struct em_sti_priv *p = ced_to_em_sti(ced);

 dev_info(&p->pdev->dev, "used for oneshot clock events\n");
 em_sti_start(p, USER_CLOCKEVENT);
 return 0;
}

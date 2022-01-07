
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_cmt_channel {TYPE_2__* cmt; } ;
struct clock_event_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; int clk; } ;
struct TYPE_3__ {int dev; } ;


 struct sh_cmt_channel* ced_to_sh_cmt (struct clock_event_device*) ;
 int clk_prepare (int ) ;
 int pm_genpd_syscore_poweron (int *) ;

__attribute__((used)) static void sh_cmt_clock_event_resume(struct clock_event_device *ced)
{
 struct sh_cmt_channel *ch = ced_to_sh_cmt(ced);

 clk_prepare(ch->cmt->clk);
 pm_genpd_syscore_poweron(&ch->cmt->pdev->dev);
}

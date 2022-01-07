
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_cmt_channel {TYPE_2__* cmt; } ;
struct clock_event_device {int dummy; } ;
struct TYPE_4__ {int clk; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 struct sh_cmt_channel* ced_to_sh_cmt (struct clock_event_device*) ;
 int clk_unprepare (int ) ;
 int pm_genpd_syscore_poweroff (int *) ;

__attribute__((used)) static void sh_cmt_clock_event_suspend(struct clock_event_device *ced)
{
 struct sh_cmt_channel *ch = ced_to_sh_cmt(ced);

 pm_genpd_syscore_poweroff(&ch->cmt->pdev->dev);
 clk_unprepare(ch->cmt->clk);
}

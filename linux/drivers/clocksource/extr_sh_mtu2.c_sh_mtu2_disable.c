
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mtu2_channel {TYPE_2__* mtu; } ;
struct TYPE_4__ {TYPE_1__* pdev; int clk; } ;
struct TYPE_3__ {int dev; } ;


 int clk_disable (int ) ;
 int dev_pm_syscore_device (int *,int) ;
 int pm_runtime_put (int *) ;
 int sh_mtu2_start_stop_ch (struct sh_mtu2_channel*,int ) ;

__attribute__((used)) static void sh_mtu2_disable(struct sh_mtu2_channel *ch)
{

 sh_mtu2_start_stop_ch(ch, 0);


 clk_disable(ch->mtu->clk);

 dev_pm_syscore_device(&ch->mtu->pdev->dev, 0);
 pm_runtime_put(&ch->mtu->pdev->dev);
}

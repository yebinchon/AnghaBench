
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_cmt_channel {TYPE_2__* cmt; } ;
struct TYPE_4__ {TYPE_1__* pdev; int clk; } ;
struct TYPE_3__ {int dev; } ;


 int clk_disable (int ) ;
 int dev_pm_syscore_device (int *,int) ;
 int pm_runtime_put (int *) ;
 int sh_cmt_start_stop_ch (struct sh_cmt_channel*,int ) ;
 int sh_cmt_write_cmcsr (struct sh_cmt_channel*,int ) ;

__attribute__((used)) static void sh_cmt_disable(struct sh_cmt_channel *ch)
{

 sh_cmt_start_stop_ch(ch, 0);


 sh_cmt_write_cmcsr(ch, 0);


 clk_disable(ch->cmt->clk);

 dev_pm_syscore_device(&ch->cmt->pdev->dev, 0);
 pm_runtime_put(&ch->cmt->pdev->dev);
}

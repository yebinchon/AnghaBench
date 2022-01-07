
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mtu2_channel {TYPE_2__* mtu; int index; } ;
struct TYPE_4__ {int clk; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int HZ ;
 int TCNT ;
 int TCR ;
 unsigned long TCR_CCLR_TGRA ;
 unsigned long TCR_TPSC_P64 ;
 int TGR ;
 int TIER ;
 unsigned long TIER_TGIEA ;
 unsigned long TIOC_IOCH (int ) ;
 unsigned long TIOC_IOCL (int ) ;
 int TIOR ;
 int TIOR_OC_0_CLEAR ;
 int TMDR ;
 unsigned long TMDR_MD_NORMAL ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 int dev_err (int *,char*,int ) ;
 int dev_pm_syscore_device (int *,int) ;
 int pm_runtime_get_sync (int *) ;
 int sh_mtu2_start_stop_ch (struct sh_mtu2_channel*,int) ;
 int sh_mtu2_write (struct sh_mtu2_channel*,int ,unsigned long) ;

__attribute__((used)) static int sh_mtu2_enable(struct sh_mtu2_channel *ch)
{
 unsigned long periodic;
 unsigned long rate;
 int ret;

 pm_runtime_get_sync(&ch->mtu->pdev->dev);
 dev_pm_syscore_device(&ch->mtu->pdev->dev, 1);


 ret = clk_enable(ch->mtu->clk);
 if (ret) {
  dev_err(&ch->mtu->pdev->dev, "ch%u: cannot enable clock\n",
   ch->index);
  return ret;
 }


 sh_mtu2_start_stop_ch(ch, 0);

 rate = clk_get_rate(ch->mtu->clk) / 64;
 periodic = (rate + HZ/2) / HZ;





 sh_mtu2_write(ch, TCR, TCR_CCLR_TGRA | TCR_TPSC_P64);
 sh_mtu2_write(ch, TIOR, TIOC_IOCH(TIOR_OC_0_CLEAR) |
        TIOC_IOCL(TIOR_OC_0_CLEAR));
 sh_mtu2_write(ch, TGR, periodic);
 sh_mtu2_write(ch, TCNT, 0);
 sh_mtu2_write(ch, TMDR, TMDR_MD_NORMAL);
 sh_mtu2_write(ch, TIER, TIER_TGIEA);


 sh_mtu2_start_stop_ch(ch, 1);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_cmt_channel {TYPE_3__* cmt; int index; } ;
struct TYPE_6__ {int clk; TYPE_2__* pdev; TYPE_1__* info; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int width; } ;


 int ETIMEDOUT ;
 int SH_CMT16_CMCSR_CKS512 ;
 int SH_CMT16_CMCSR_CMIE ;
 int SH_CMT32_CMCSR_CKS_RCLK8 ;
 int SH_CMT32_CMCSR_CMM ;
 int SH_CMT32_CMCSR_CMR_IRQ ;
 int SH_CMT32_CMCSR_CMTOUT_IE ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int *,char*,int ) ;
 int dev_pm_syscore_device (int *,int) ;
 int pm_runtime_get_sync (int *) ;
 scalar_t__ sh_cmt_read_cmcnt (struct sh_cmt_channel*) ;
 int sh_cmt_start_stop_ch (struct sh_cmt_channel*,int) ;
 int sh_cmt_write_cmcnt (struct sh_cmt_channel*,int ) ;
 int sh_cmt_write_cmcor (struct sh_cmt_channel*,int) ;
 int sh_cmt_write_cmcsr (struct sh_cmt_channel*,int) ;
 int udelay (int) ;

__attribute__((used)) static int sh_cmt_enable(struct sh_cmt_channel *ch)
{
 int k, ret;

 pm_runtime_get_sync(&ch->cmt->pdev->dev);
 dev_pm_syscore_device(&ch->cmt->pdev->dev, 1);


 ret = clk_enable(ch->cmt->clk);
 if (ret) {
  dev_err(&ch->cmt->pdev->dev, "ch%u: cannot enable clock\n",
   ch->index);
  goto err0;
 }


 sh_cmt_start_stop_ch(ch, 0);


 if (ch->cmt->info->width == 16) {
  sh_cmt_write_cmcsr(ch, SH_CMT16_CMCSR_CMIE |
       SH_CMT16_CMCSR_CKS512);
 } else {
  sh_cmt_write_cmcsr(ch, SH_CMT32_CMCSR_CMM |
       SH_CMT32_CMCSR_CMTOUT_IE |
       SH_CMT32_CMCSR_CMR_IRQ |
       SH_CMT32_CMCSR_CKS_RCLK8);
 }

 sh_cmt_write_cmcor(ch, 0xffffffff);
 sh_cmt_write_cmcnt(ch, 0);
 for (k = 0; k < 100; k++) {
  if (!sh_cmt_read_cmcnt(ch))
   break;
  udelay(1);
 }

 if (sh_cmt_read_cmcnt(ch)) {
  dev_err(&ch->cmt->pdev->dev, "ch%u: cannot clear CMCNT\n",
   ch->index);
  ret = -ETIMEDOUT;
  goto err1;
 }


 sh_cmt_start_stop_ch(ch, 1);
 return 0;
 err1:

 clk_disable(ch->cmt->clk);

 err0:
 return ret;
}

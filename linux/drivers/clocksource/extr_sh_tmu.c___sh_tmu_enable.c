
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_tmu_channel {int index; TYPE_2__* tmu; } ;
struct TYPE_4__ {TYPE_1__* pdev; int clk; } ;
struct TYPE_3__ {int dev; } ;


 int TCNT ;
 int TCOR ;
 int TCR ;
 int TCR_TPSC_CLK4 ;
 int clk_enable (int ) ;
 int dev_err (int *,char*,int ) ;
 int sh_tmu_start_stop_ch (struct sh_tmu_channel*,int) ;
 int sh_tmu_write (struct sh_tmu_channel*,int ,int) ;

__attribute__((used)) static int __sh_tmu_enable(struct sh_tmu_channel *ch)
{
 int ret;


 ret = clk_enable(ch->tmu->clk);
 if (ret) {
  dev_err(&ch->tmu->pdev->dev, "ch%u: cannot enable clock\n",
   ch->index);
  return ret;
 }


 sh_tmu_start_stop_ch(ch, 0);


 sh_tmu_write(ch, TCOR, 0xffffffff);
 sh_tmu_write(ch, TCNT, 0xffffffff);


 sh_tmu_write(ch, TCR, TCR_TPSC_CLK4);


 sh_tmu_start_stop_ch(ch, 1);

 return 0;
}

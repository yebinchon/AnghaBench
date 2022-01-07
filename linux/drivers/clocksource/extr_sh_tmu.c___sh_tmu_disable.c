
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_tmu_channel {TYPE_1__* tmu; } ;
struct TYPE_2__ {int clk; } ;


 int TCR ;
 int TCR_TPSC_CLK4 ;
 int clk_disable (int ) ;
 int sh_tmu_start_stop_ch (struct sh_tmu_channel*,int ) ;
 int sh_tmu_write (struct sh_tmu_channel*,int ,int ) ;

__attribute__((used)) static void __sh_tmu_disable(struct sh_tmu_channel *ch)
{

 sh_tmu_start_stop_ch(ch, 0);


 sh_tmu_write(ch, TCR, TCR_TPSC_CLK4);


 clk_disable(ch->tmu->clk);
}

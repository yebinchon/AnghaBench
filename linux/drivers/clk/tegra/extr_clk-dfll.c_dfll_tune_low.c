
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_dfll {TYPE_3__* soc; int tune_range; } ;
struct TYPE_6__ {int (* set_clock_trimmers_low ) () ;TYPE_2__* cvb; } ;
struct TYPE_4__ {int tune1; int tune0_low; } ;
struct TYPE_5__ {TYPE_1__ cpu_dfll_data; } ;


 int DFLL_TUNE0 ;
 int DFLL_TUNE1 ;
 int DFLL_TUNE_LOW ;
 int dfll_wmb (struct tegra_dfll*) ;
 int dfll_writel (struct tegra_dfll*,int ,int ) ;
 int stub1 () ;

__attribute__((used)) static void dfll_tune_low(struct tegra_dfll *td)
{
 td->tune_range = DFLL_TUNE_LOW;

 dfll_writel(td, td->soc->cvb->cpu_dfll_data.tune0_low, DFLL_TUNE0);
 dfll_writel(td, td->soc->cvb->cpu_dfll_data.tune1, DFLL_TUNE1);
 dfll_wmb(td);

 if (td->soc->set_clock_trimmers_low)
  td->soc->set_clock_trimmers_low();
}

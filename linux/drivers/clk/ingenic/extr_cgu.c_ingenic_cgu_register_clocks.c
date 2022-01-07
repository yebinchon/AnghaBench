
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int clk_num; int * clks; } ;
struct ingenic_cgu {TYPE_2__ clocks; TYPE_1__* clock_info; int np; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int type; } ;


 int CGU_CLK_EXT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int clk_put (int ) ;
 int clk_unregister (int ) ;
 int ingenic_register_clock (struct ingenic_cgu*,unsigned int) ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 int of_clk_add_provider (int ,int ,TYPE_2__*) ;
 int of_clk_src_onecell_get ;

int ingenic_cgu_register_clocks(struct ingenic_cgu *cgu)
{
 unsigned i;
 int err;

 cgu->clocks.clks = kcalloc(cgu->clocks.clk_num, sizeof(struct clk *),
       GFP_KERNEL);
 if (!cgu->clocks.clks) {
  err = -ENOMEM;
  goto err_out;
 }

 for (i = 0; i < cgu->clocks.clk_num; i++) {
  err = ingenic_register_clock(cgu, i);
  if (err)
   goto err_out_unregister;
 }

 err = of_clk_add_provider(cgu->np, of_clk_src_onecell_get,
      &cgu->clocks);
 if (err)
  goto err_out_unregister;

 return 0;

err_out_unregister:
 for (i = 0; i < cgu->clocks.clk_num; i++) {
  if (!cgu->clocks.clks[i])
   continue;
  if (cgu->clock_info[i].type & CGU_CLK_EXT)
   clk_put(cgu->clocks.clks[i]);
  else
   clk_unregister(cgu->clocks.clks[i]);
 }
 kfree(cgu->clocks.clks);
err_out:
 return err;
}

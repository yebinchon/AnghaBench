
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pic32_sec_osc_data {scalar_t__ status_reg; scalar_t__ enable_reg; int status_mask; int enable_mask; int fixed_rate; int init_data; } ;
struct TYPE_2__ {int * init; } ;
struct pic32_sec_osc {TYPE_1__ hw; scalar_t__ status_reg; scalar_t__ enable_reg; int status_mask; int enable_mask; int fixed_rate; struct pic32_clk_common* core; } ;
struct pic32_clk_common {int dev; scalar_t__ iobase; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct clk* devm_clk_register (int ,TYPE_1__*) ;
 struct pic32_sec_osc* devm_kzalloc (int ,int,int ) ;

struct clk *pic32_sosc_clk_register(const struct pic32_sec_osc_data *data,
        struct pic32_clk_common *core)
{
 struct pic32_sec_osc *sosc;

 sosc = devm_kzalloc(core->dev, sizeof(*sosc), GFP_KERNEL);
 if (!sosc)
  return ERR_PTR(-ENOMEM);

 sosc->core = core;
 sosc->hw.init = &data->init_data;
 sosc->fixed_rate = data->fixed_rate;
 sosc->enable_mask = data->enable_mask;
 sosc->status_mask = data->status_mask;
 sosc->enable_reg = data->enable_reg + core->iobase;
 sosc->status_reg = data->status_reg + core->iobase;

 return devm_clk_register(core->dev, &sosc->hw);
}

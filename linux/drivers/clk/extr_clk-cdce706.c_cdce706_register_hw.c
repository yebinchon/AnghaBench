
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_init_data {char* name; } ;
struct TYPE_4__ {struct clk_init_data* init; } ;
struct cdce706_hw_data {unsigned int idx; TYPE_2__ hw; struct cdce706_dev_data* dev_data; } ;
struct cdce706_dev_data {TYPE_1__* client; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int *,char*,char const* const) ;
 int devm_clk_hw_register (int *,TYPE_2__*) ;

__attribute__((used)) static int cdce706_register_hw(struct cdce706_dev_data *cdce,
          struct cdce706_hw_data *hw, unsigned num_hw,
          const char * const *clk_names,
          struct clk_init_data *init)
{
 unsigned i;
 int ret;

 for (i = 0; i < num_hw; ++i, ++hw) {
  init->name = clk_names[i];
  hw->dev_data = cdce;
  hw->idx = i;
  hw->hw.init = init;
  ret = devm_clk_hw_register(&cdce->client->dev,
         &hw->hw);
  if (ret) {
   dev_err(&cdce->client->dev, "Failed to register %s\n",
    clk_names[i]);
   return ret;
  }
 }
 return 0;
}

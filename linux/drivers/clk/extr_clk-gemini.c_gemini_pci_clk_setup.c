
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; scalar_t__ flags; int * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_gemini_pci {struct clk_hw hw; struct regmap* map; } ;


 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_hw_register (int *,struct clk_hw*) ;
 int gemini_pci_clk_ops ;
 int kfree (struct clk_gemini_pci*) ;
 struct clk_gemini_pci* kzalloc (int,int ) ;

__attribute__((used)) static struct clk_hw *gemini_pci_clk_setup(const char *name,
        const char *parent_name,
        struct regmap *map)
{
 struct clk_gemini_pci *pciclk;
 struct clk_init_data init;
 int ret;

 pciclk = kzalloc(sizeof(*pciclk), GFP_KERNEL);
 if (!pciclk)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &gemini_pci_clk_ops;
 init.flags = 0;
 init.parent_names = &parent_name;
 init.num_parents = 1;
 pciclk->map = map;
 pciclk->hw.init = &init;

 ret = clk_hw_register(((void*)0), &pciclk->hw);
 if (ret) {
  kfree(pciclk);
  return ERR_PTR(ret);
 }

 return &pciclk->hw;
}

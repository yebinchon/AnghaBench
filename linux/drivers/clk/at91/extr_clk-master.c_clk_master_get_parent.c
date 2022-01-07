
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct clk_master {TYPE_1__* layout; int regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int offset; } ;


 unsigned int AT91_PMC_CSS ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_master* to_clk_master (struct clk_hw*) ;

__attribute__((used)) static u8 clk_master_get_parent(struct clk_hw *hw)
{
 struct clk_master *master = to_clk_master(hw);
 unsigned int mckr;

 regmap_read(master->regmap, master->layout->offset, &mckr);

 return mckr & AT91_PMC_CSS;
}

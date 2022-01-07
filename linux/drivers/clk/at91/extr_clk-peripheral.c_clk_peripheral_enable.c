
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clk_peripheral {scalar_t__ id; int regmap; } ;
struct clk_hw {int dummy; } ;


 int AT91_PMC_PCER ;
 int AT91_PMC_PCER1 ;
 scalar_t__ PERIPHERAL_ID_MAX ;
 scalar_t__ PERIPHERAL_ID_MIN ;
 int PERIPHERAL_MASK (scalar_t__) ;
 int regmap_write (int ,int,int ) ;
 struct clk_peripheral* to_clk_peripheral (struct clk_hw*) ;

__attribute__((used)) static int clk_peripheral_enable(struct clk_hw *hw)
{
 struct clk_peripheral *periph = to_clk_peripheral(hw);
 int offset = AT91_PMC_PCER;
 u32 id = periph->id;

 if (id < PERIPHERAL_ID_MIN)
  return 0;
 if (id > PERIPHERAL_ID_MAX)
  offset = AT91_PMC_PCER1;
 regmap_write(periph->regmap, offset, PERIPHERAL_MASK(id));

 return 0;
}

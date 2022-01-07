
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;


 struct clk_hw* clk_find_hw (char const*,char const*) ;
 struct clk* clk_hw_create_clk (struct device*,struct clk_hw*,char const*,char const*) ;

__attribute__((used)) static struct clk *__clk_get_sys(struct device *dev, const char *dev_id,
     const char *con_id)
{
 struct clk_hw *hw = clk_find_hw(dev_id, con_id);

 return clk_hw_create_clk(dev, hw, dev_id, con_id);
}

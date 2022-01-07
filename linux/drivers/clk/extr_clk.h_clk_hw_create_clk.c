
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;



__attribute__((used)) static inline struct clk *
clk_hw_create_clk(struct device *dev, struct clk_hw *hw, const char *dev_id,
    const char *con_id)
{
 return (struct clk *)hw;
}

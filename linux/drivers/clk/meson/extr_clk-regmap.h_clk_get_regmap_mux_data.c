
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_regmap_mux_data {int dummy; } ;
struct clk_regmap {scalar_t__ data; } ;



__attribute__((used)) static inline struct clk_regmap_mux_data *
clk_get_regmap_mux_data(struct clk_regmap *clk)
{
 return (struct clk_regmap_mux_data *)clk->data;
}

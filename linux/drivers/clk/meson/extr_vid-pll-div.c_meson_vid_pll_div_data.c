
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_vid_pll_div_data {int dummy; } ;
struct clk_regmap {scalar_t__ data; } ;



__attribute__((used)) static inline struct meson_vid_pll_div_data *
meson_vid_pll_div_data(struct clk_regmap *clk)
{
 return (struct meson_vid_pll_div_data *)clk->data;
}

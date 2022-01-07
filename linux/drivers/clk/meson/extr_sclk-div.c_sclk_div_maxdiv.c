
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_sclk_div_data {int dummy; } ;


 int sclk_div_maxval (struct meson_sclk_div_data*) ;

__attribute__((used)) static int sclk_div_maxdiv(struct meson_sclk_div_data *sclk)
{
 return sclk_div_maxval(sclk) + 1;
}

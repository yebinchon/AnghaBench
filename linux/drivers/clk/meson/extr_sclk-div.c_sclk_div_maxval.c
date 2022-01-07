
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;
struct meson_sclk_div_data {TYPE_1__ div; } ;



__attribute__((used)) static int sclk_div_maxval(struct meson_sclk_div_data *sclk)
{
 return (1 << sclk->div.width) - 1;
}

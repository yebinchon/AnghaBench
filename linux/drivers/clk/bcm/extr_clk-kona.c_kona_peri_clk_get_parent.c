
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct peri_clk_data {int sel; } ;
struct TYPE_2__ {struct peri_clk_data* peri; } ;
struct kona_clk {int ccu; TYPE_1__ u; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ BAD_CLK_INDEX ;
 scalar_t__ selector_read_index (int ,int *) ;
 struct kona_clk* to_kona_clk (struct clk_hw*) ;

__attribute__((used)) static u8 kona_peri_clk_get_parent(struct clk_hw *hw)
{
 struct kona_clk *bcm_clk = to_kona_clk(hw);
 struct peri_clk_data *data = bcm_clk->u.peri;
 u8 index;

 index = selector_read_index(bcm_clk->ccu, &data->sel);


 return index == BAD_CLK_INDEX ? 0 : index;
}

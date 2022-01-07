
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dra7_atl_desc {int enabled; TYPE_1__* cinfo; int id; int probed; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DRA7_ATL_SWEN_REG (int ) ;
 int atl_write (TYPE_1__*,int ,int ) ;
 int pm_runtime_put_sync (int ) ;
 struct dra7_atl_desc* to_atl_desc (struct clk_hw*) ;

__attribute__((used)) static void atl_clk_disable(struct clk_hw *hw)
{
 struct dra7_atl_desc *cdesc = to_atl_desc(hw);

 if (!cdesc->probed)
  goto out;

 atl_write(cdesc->cinfo, DRA7_ATL_SWEN_REG(cdesc->id), 0);
 pm_runtime_put_sync(cdesc->cinfo->dev);

out:
 cdesc->enabled = 0;
}

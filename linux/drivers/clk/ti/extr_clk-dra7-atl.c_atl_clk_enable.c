
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dra7_atl_desc {int enabled; int id; TYPE_1__* cinfo; scalar_t__ divider; int valid; int probed; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DRA7_ATL_ATLCR_REG (int ) ;
 scalar_t__ DRA7_ATL_SWEN ;
 int DRA7_ATL_SWEN_REG (int ) ;
 int atl_write (TYPE_1__*,int ,scalar_t__) ;
 int dev_warn (int ,char*,int ) ;
 int pm_runtime_get_sync (int ) ;
 struct dra7_atl_desc* to_atl_desc (struct clk_hw*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atl_clk_enable(struct clk_hw *hw)
{
 struct dra7_atl_desc *cdesc = to_atl_desc(hw);

 if (!cdesc->probed)
  goto out;

 if (unlikely(!cdesc->valid))
  dev_warn(cdesc->cinfo->dev, "atl%d has not been configured\n",
    cdesc->id);
 pm_runtime_get_sync(cdesc->cinfo->dev);

 atl_write(cdesc->cinfo, DRA7_ATL_ATLCR_REG(cdesc->id),
    cdesc->divider - 1);
 atl_write(cdesc->cinfo, DRA7_ATL_SWEN_REG(cdesc->id), DRA7_ATL_SWEN);

out:
 cdesc->enabled = 1;

 return 0;
}

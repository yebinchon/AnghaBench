
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_pcie2 {int dummy; } ;


 int BCMA_CORE_PCIE2_CONFIGINDADDR ;
 int BCMA_CORE_PCIE2_CONFIGINDDATA ;
 int pcie2_write32 (struct bcma_drv_pcie2*,int ,int ) ;

__attribute__((used)) static void bcma_core_pcie2_cfg_write(struct bcma_drv_pcie2 *pcie2, u32 addr,
          u32 val)
{
 pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDADDR, addr);
 pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDDATA, val);
}

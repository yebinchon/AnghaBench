
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_drv_pcie2 {int dummy; } ;


 int BCMA_CORE_PCIE2_CONFIGINDADDR ;
 int BCMA_CORE_PCIE2_CONFIGINDDATA ;
 int PCIE2_PMCR_REFUP ;
 int pcie2_set32 (struct bcma_drv_pcie2*,int ,int) ;
 int pcie2_write32 (struct bcma_drv_pcie2*,int ,int ) ;

__attribute__((used)) static void pciedev_crwlpciegen2_180(struct bcma_drv_pcie2 *pcie2)
{
 pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDADDR, PCIE2_PMCR_REFUP);
 pcie2_set32(pcie2, BCMA_CORE_PCIE2_CONFIGINDDATA, 0x1f);
}

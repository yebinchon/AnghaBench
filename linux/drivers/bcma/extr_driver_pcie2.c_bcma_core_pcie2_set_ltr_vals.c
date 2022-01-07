
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_drv_pcie2 {int dummy; } ;


 int BCMA_CORE_PCIE2_CONFIGINDADDR ;
 int BCMA_CORE_PCIE2_CONFIGINDDATA ;
 int pcie2_write32 (struct bcma_drv_pcie2*,int ,int) ;

__attribute__((used)) static void bcma_core_pcie2_set_ltr_vals(struct bcma_drv_pcie2 *pcie2)
{

 pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDADDR, 0x844);
 pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDDATA, 0x883c883c);

 pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDADDR, 0x848);
 pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDDATA, 0x88648864);

 pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDADDR, 0x84C);
 pcie2_write32(pcie2, BCMA_CORE_PCIE2_CONFIGINDDATA, 0x90039003);
}

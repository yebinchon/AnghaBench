
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcma_drv_pcie2 {int dummy; } ;


 int BCMA_CORE_PCIE2_CLK_CONTROL ;
 int PCIE2_CLKC_DISSPROMLD ;
 int PCIE2_CLKC_DLYPERST ;
 int pcie2_read32 (struct bcma_drv_pcie2*,int ) ;
 int pcie2_write32 (struct bcma_drv_pcie2*,int ,int ) ;

__attribute__((used)) static u32 bcma_core_pcie2_war_delay_perst_enab(struct bcma_drv_pcie2 *pcie2,
      bool enable)
{
 u32 val;


 val = pcie2_read32(pcie2, BCMA_CORE_PCIE2_CLK_CONTROL);
 val |= PCIE2_CLKC_DLYPERST;
 val &= ~PCIE2_CLKC_DISSPROMLD;
 if (enable) {
  val &= ~PCIE2_CLKC_DLYPERST;
  val |= PCIE2_CLKC_DISSPROMLD;
 }
 pcie2_write32(pcie2, (BCMA_CORE_PCIE2_CLK_CONTROL), val);

 return pcie2_read32(pcie2, BCMA_CORE_PCIE2_CLK_CONTROL);
}

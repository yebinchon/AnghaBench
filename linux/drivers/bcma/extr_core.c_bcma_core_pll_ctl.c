
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcma_device {int bus; } ;


 int BCMA_CLKCTLST ;
 int BCMA_CLKCTLST_EXTRESREQ ;
 int BCMA_CLKCTLST_EXTRESST ;
 int WARN_ON (int) ;
 int bcma_err (int ,char*) ;
 int bcma_mask32 (struct bcma_device*,int ,int) ;
 int bcma_read32 (struct bcma_device*,int ) ;
 int bcma_set32 (struct bcma_device*,int ,int) ;
 int udelay (int) ;

void bcma_core_pll_ctl(struct bcma_device *core, u32 req, u32 status, bool on)
{
 u16 i;

 WARN_ON(req & ~BCMA_CLKCTLST_EXTRESREQ);
 WARN_ON(status & ~BCMA_CLKCTLST_EXTRESST);

 if (on) {
  bcma_set32(core, BCMA_CLKCTLST, req);
  for (i = 0; i < 10000; i++) {
   if ((bcma_read32(core, BCMA_CLKCTLST) & status) ==
       status) {
    i = 0;
    break;
   }
   udelay(10);
  }
  if (i)
   bcma_err(core->bus, "PLL enable timeout\n");
 } else {





  bcma_mask32(core, BCMA_CLKCTLST, ~req);
  bcma_read32(core, BCMA_CLKCTLST);
 }
}

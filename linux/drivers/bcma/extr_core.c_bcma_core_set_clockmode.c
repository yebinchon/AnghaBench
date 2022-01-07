
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ id; } ;
struct bcma_device {int bus; TYPE_1__ id; } ;
typedef enum bcma_clkmode { ____Placeholder_bcma_clkmode } bcma_clkmode ;


 int BCMA_CLKCTLST ;
 int BCMA_CLKCTLST_FORCEHT ;
 int BCMA_CLKCTLST_HAVEHT ;


 scalar_t__ BCMA_CORE_80211 ;
 scalar_t__ BCMA_CORE_CHIPCOMMON ;
 scalar_t__ BCMA_CORE_PCIE ;
 int WARN_ON (int) ;
 int bcma_err (int ,char*) ;
 int bcma_read32 (struct bcma_device*,int ) ;
 int bcma_set32 (struct bcma_device*,int ,int ) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

void bcma_core_set_clockmode(struct bcma_device *core,
        enum bcma_clkmode clkmode)
{
 u16 i;

 WARN_ON(core->id.id != BCMA_CORE_CHIPCOMMON &&
  core->id.id != BCMA_CORE_PCIE &&
  core->id.id != BCMA_CORE_80211);

 switch (clkmode) {
 case 128:
  bcma_set32(core, BCMA_CLKCTLST, BCMA_CLKCTLST_FORCEHT);
  usleep_range(64, 300);
  for (i = 0; i < 1500; i++) {
   if (bcma_read32(core, BCMA_CLKCTLST) &
       BCMA_CLKCTLST_HAVEHT) {
    i = 0;
    break;
   }
   udelay(10);
  }
  if (i)
   bcma_err(core->bus, "HT force timeout\n");
  break;
 case 129:
  bcma_set32(core, BCMA_CLKCTLST, ~BCMA_CLKCTLST_FORCEHT);
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcma_drv_cc {TYPE_1__* core; } ;
struct TYPE_2__ {int bus; } ;


 int BCMA_CC_FLASHCTL ;
 int BCMA_CC_FLASHCTL_BUSY ;
 int BCMA_CC_FLASHCTL_START ;
 int bcma_cc_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_cc_write32 (struct bcma_drv_cc*,int ,int) ;
 int bcma_err (int ,char*) ;
 int cpu_relax () ;

__attribute__((used)) static void bcma_sflash_cmd(struct bcma_drv_cc *cc, u32 opcode)
{
 int i;
 bcma_cc_write32(cc, BCMA_CC_FLASHCTL,
   BCMA_CC_FLASHCTL_START | opcode);
 for (i = 0; i < 1000; i++) {
  if (!(bcma_cc_read32(cc, BCMA_CC_FLASHCTL) &
        BCMA_CC_FLASHCTL_BUSY))
   return;
  cpu_relax();
 }
 bcma_err(cc->core->bus, "SFLASH control command failed (timeout)!\n");
}

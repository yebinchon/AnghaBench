
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ s64 ;


 int ENXIO ;
 scalar_t__ OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 int msleep (int ) ;
 scalar_t__ opal_xive_set_irq_config (int ,int ,int ,int ) ;

int xive_native_configure_irq(u32 hw_irq, u32 target, u8 prio, u32 sw_irq)
{
 s64 rc;

 for (;;) {
  rc = opal_xive_set_irq_config(hw_irq, target, prio, sw_irq);
  if (rc != OPAL_BUSY)
   break;
  msleep(OPAL_BUSY_DELAY_MS);
 }
 return rc == 0 ? 0 : -ENXIO;
}

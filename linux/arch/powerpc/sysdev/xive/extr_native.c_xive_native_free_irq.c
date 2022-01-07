
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s64 ;


 scalar_t__ OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 int msleep (int ) ;
 scalar_t__ opal_xive_free_irq (int ) ;

void xive_native_free_irq(u32 irq)
{
 for (;;) {
  s64 rc = opal_xive_free_irq(irq);
  if (rc != OPAL_BUSY)
   break;
  msleep(OPAL_BUSY_DELAY_MS);
 }
}

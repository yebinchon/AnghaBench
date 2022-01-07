
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s64 ;


 scalar_t__ OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 int OPAL_XIVE_ANY_CHIP ;
 int msleep (int ) ;
 scalar_t__ opal_xive_allocate_irq (int ) ;

u32 xive_native_alloc_irq(void)
{
 s64 rc;

 for (;;) {
  rc = opal_xive_allocate_irq(OPAL_XIVE_ANY_CHIP);
  if (rc != OPAL_BUSY)
   break;
  msleep(OPAL_BUSY_DELAY_MS);
 }
 if (rc < 0)
  return 0;
 return rc;
}

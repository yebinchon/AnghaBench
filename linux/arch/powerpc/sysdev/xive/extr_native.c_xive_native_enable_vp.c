
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ s64 ;


 int EIO ;
 scalar_t__ OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 int OPAL_XIVE_VP_ENABLED ;
 int OPAL_XIVE_VP_SINGLE_ESCALATION ;
 int msleep (int ) ;
 scalar_t__ opal_xive_set_vp_info (int ,int ,int ) ;

int xive_native_enable_vp(u32 vp_id, bool single_escalation)
{
 s64 rc;
 u64 flags = OPAL_XIVE_VP_ENABLED;

 if (single_escalation)
  flags |= OPAL_XIVE_VP_SINGLE_ESCALATION;
 for (;;) {
  rc = opal_xive_set_vp_info(vp_id, flags, 0);
  if (rc != OPAL_BUSY)
   break;
  msleep(OPAL_BUSY_DELAY_MS);
 }
 return rc ? -EIO : 0;
}

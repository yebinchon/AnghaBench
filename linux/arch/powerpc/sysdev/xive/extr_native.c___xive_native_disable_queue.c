
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xive_q {int dummy; } ;
typedef scalar_t__ s64 ;


 scalar_t__ OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 int msleep (int ) ;
 scalar_t__ opal_xive_set_queue_info (int ,int ,int ,int ,int ) ;
 int pr_err (char*,scalar_t__,int ) ;

__attribute__((used)) static void __xive_native_disable_queue(u32 vp_id, struct xive_q *q, u8 prio)
{
 s64 rc;


 for (;;) {
  rc = opal_xive_set_queue_info(vp_id, prio, 0, 0, 0);
  if (rc != OPAL_BUSY)
   break;
  msleep(OPAL_BUSY_DELAY_MS);
 }
 if (rc)
  pr_err("Error %lld disabling queue for prio %d\n", rc, prio);
}

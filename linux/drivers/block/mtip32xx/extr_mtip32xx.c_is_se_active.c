
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {TYPE_1__* port; int dd_flag; } ;
struct TYPE_2__ {long ic_pause_timer; int svc_wait; int flags; } ;


 int MTIP_DDF_SEC_LOCK_BIT ;
 int MTIP_PF_SE_ACTIVE_BIT ;
 int clear_bit (int ,int *) ;
 int jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int test_bit (int ,int *) ;
 scalar_t__ time_after (int ,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static inline bool is_se_active(struct driver_data *dd)
{
 if (unlikely(test_bit(MTIP_PF_SE_ACTIVE_BIT, &dd->port->flags))) {
  if (dd->port->ic_pause_timer) {
   unsigned long to = dd->port->ic_pause_timer +
       msecs_to_jiffies(1000);
   if (time_after(jiffies, to)) {
    clear_bit(MTIP_PF_SE_ACTIVE_BIT,
       &dd->port->flags);
    clear_bit(MTIP_DDF_SEC_LOCK_BIT, &dd->dd_flag);
    dd->port->ic_pause_timer = 0;
    wake_up_interruptible(&dd->port->svc_wait);
    return 0;
   }
  }
  return 1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct throtl_service_queue {int pending_timer; } ;
struct TYPE_2__ {int throtl_slice; } ;


 int jiffies ;
 int mod_timer (int *,unsigned long) ;
 TYPE_1__* sq_to_td (struct throtl_service_queue*) ;
 int throtl_log (struct throtl_service_queue*,char*,unsigned long,int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void throtl_schedule_pending_timer(struct throtl_service_queue *sq,
       unsigned long expires)
{
 unsigned long max_expire = jiffies + 8 * sq_to_td(sq)->throtl_slice;
 if (time_after(expires, max_expire))
  expires = max_expire;
 mod_timer(&sq->pending_timer, expires);
 throtl_log(sq, "schedule timer. delay=%lu jiffies=%lu",
     expires - jiffies, jiffies);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_service_queue {int first_pending_disptime; int nr_pending; } ;


 int jiffies ;
 int throtl_schedule_pending_timer (struct throtl_service_queue*,int ) ;
 scalar_t__ time_after (int ,int ) ;
 int update_min_dispatch_time (struct throtl_service_queue*) ;

__attribute__((used)) static bool throtl_schedule_next_dispatch(struct throtl_service_queue *sq,
       bool force)
{

 if (!sq->nr_pending)
  return 1;

 update_min_dispatch_time(sq);


 if (force || time_after(sq->first_pending_disptime, jiffies)) {
  throtl_schedule_pending_timer(sq, sq->first_pending_disptime);
  return 1;
 }


 return 0;
}

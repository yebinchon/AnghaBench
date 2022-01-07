
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int event_flags; struct disk_events* ev; } ;
struct disk_events {long poll_msecs; } ;


 int DISK_EVENT_FLAG_POLL ;
 long disk_events_dfl_poll_msecs ;
 unsigned long msecs_to_jiffies (long) ;

__attribute__((used)) static unsigned long disk_events_poll_jiffies(struct gendisk *disk)
{
 struct disk_events *ev = disk->ev;
 long intv_msecs = 0;





 if (ev->poll_msecs >= 0)
  intv_msecs = ev->poll_msecs;
 else if (disk->event_flags & DISK_EVENT_FLAG_POLL)
  intv_msecs = disk_events_dfl_poll_msecs;

 return msecs_to_jiffies(intv_msecs);
}

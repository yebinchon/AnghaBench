
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {int timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static inline void lanai_timed_poll_stop(struct lanai_dev *lanai)
{
 del_timer_sync(&lanai->timer);
}

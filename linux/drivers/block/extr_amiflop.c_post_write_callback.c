
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int post_write (int ) ;
 int post_write_timer_drive ;

__attribute__((used)) static void post_write_callback(struct timer_list *timer)
{
 post_write(post_write_timer_drive);
}

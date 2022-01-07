
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int TRACE_TEXT (char*) ;
 int dtlk_process_list ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void dtlk_timer_tick(struct timer_list *unused)
{
 TRACE_TEXT(" dtlk_timer_tick");
 wake_up_interruptible(&dtlk_process_list);
}

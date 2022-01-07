
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* interrupt ) () ;} ;


 int cancel_delayed_work (int *) ;
 TYPE_1__* cont ;
 int fd_timer ;
 int stub1 () ;

__attribute__((used)) static void main_command_interrupt(void)
{
 cancel_delayed_work(&fd_timer);
 cont->interrupt();
}

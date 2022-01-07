
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_13__ {TYPE_4__* mm; } ;
struct TYPE_12__ {int (* event_handler ) (TYPE_5__*) ;} ;
struct TYPE_8__ {int pid; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
struct TYPE_10__ {TYPE_2__ id; } ;
struct TYPE_11__ {TYPE_3__ context; } ;


 int IRQ_HANDLED ;
 TYPE_7__* get_current () ;
 int os_alarm_process (int ) ;
 int stub1 (TYPE_5__*) ;
 TYPE_5__ timer_clockevent ;

__attribute__((used)) static irqreturn_t um_timer(int irq, void *dev)
{
 if (get_current()->mm != ((void*)0))
 {

  os_alarm_process(get_current()->mm->context.id.u.pid);
 }

 (*timer_clockevent.event_handler)(&timer_clockevent);

 return IRQ_HANDLED;
}

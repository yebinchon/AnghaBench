
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * gs_cb; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int __ctl_clear_bit (int,int) ;
 TYPE_2__* current ;
 int kfree (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static int gs_disable(void)
{
 if (current->thread.gs_cb) {
  preempt_disable();
  kfree(current->thread.gs_cb);
  current->thread.gs_cb = ((void*)0);
  __ctl_clear_bit(2, 4);
  preempt_enable();
 }
 return 0;
}

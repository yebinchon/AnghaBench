
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct gs_cb {int dummy; } ;
struct TYPE_3__ {struct gs_cb* gs_cb; struct gs_cb* gs_bc_cb; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int TIF_GUARDED_STORAGE ;
 int __ctl_set_bit (int,int) ;
 int clear_thread_flag (int ) ;
 TYPE_2__* current ;
 int kfree (struct gs_cb*) ;
 int load_gs_cb (struct gs_cb*) ;
 int preempt_disable () ;
 int preempt_enable () ;

void gs_load_bc_cb(struct pt_regs *regs)
{
 struct gs_cb *gs_cb;

 preempt_disable();
 clear_thread_flag(TIF_GUARDED_STORAGE);
 gs_cb = current->thread.gs_bc_cb;
 if (gs_cb) {
  kfree(current->thread.gs_cb);
  current->thread.gs_bc_cb = ((void*)0);
  __ctl_set_bit(2, 4);
  load_gs_cb(gs_cb);
  current->thread.gs_cb = gs_cb;
 }
 preempt_enable();
}

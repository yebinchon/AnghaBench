
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int EXIT_TO_USERMODE_LOOP_FLAGS ;
 int READ_ONCE (int ) ;
 int TIF_NOTIFY_RESUME ;
 int _TIF_NEED_RESCHED ;
 int _TIF_NOTIFY_RESUME ;
 int _TIF_PATCH_PENDING ;
 int _TIF_SIGPENDING ;
 int _TIF_UPROBE ;
 int _TIF_USER_RETURN_NOTIFY ;
 int clear_thread_flag (int ) ;
 int current ;
 TYPE_1__* current_thread_info () ;
 int do_signal (struct pt_regs*) ;
 int fire_user_return_notifiers () ;
 int klp_update_patch_state (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int rseq_handle_notify_resume (int *,struct pt_regs*) ;
 int schedule () ;
 int tracehook_notify_resume (struct pt_regs*) ;
 int uprobe_notify_resume (struct pt_regs*) ;

__attribute__((used)) static void exit_to_usermode_loop(struct pt_regs *regs, u32 cached_flags)
{







 while (1) {

  local_irq_enable();

  if (cached_flags & _TIF_NEED_RESCHED)
   schedule();

  if (cached_flags & _TIF_UPROBE)
   uprobe_notify_resume(regs);

  if (cached_flags & _TIF_PATCH_PENDING)
   klp_update_patch_state(current);


  if (cached_flags & _TIF_SIGPENDING)
   do_signal(regs);

  if (cached_flags & _TIF_NOTIFY_RESUME) {
   clear_thread_flag(TIF_NOTIFY_RESUME);
   tracehook_notify_resume(regs);
   rseq_handle_notify_resume(((void*)0), regs);
  }

  if (cached_flags & _TIF_USER_RETURN_NOTIFY)
   fire_user_return_notifiers();


  local_irq_disable();

  cached_flags = READ_ONCE(current_thread_info()->flags);

  if (!(cached_flags & EXIT_TO_USERMODE_LOOP_FLAGS))
   break;
 }
}

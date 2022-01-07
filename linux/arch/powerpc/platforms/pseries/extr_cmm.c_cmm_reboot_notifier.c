
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 unsigned long SYS_RESTART ;
 int cmm_free_pages (int ) ;
 int * cmm_thread_ptr ;
 int kthread_stop (int *) ;
 int loaned_pages ;

__attribute__((used)) static int cmm_reboot_notifier(struct notifier_block *nb,
          unsigned long action, void *unused)
{
 if (action == SYS_RESTART) {
  if (cmm_thread_ptr)
   kthread_stop(cmm_thread_ptr);
  cmm_thread_ptr = ((void*)0);
  cmm_free_pages(loaned_pages);
 }
 return NOTIFY_DONE;
}

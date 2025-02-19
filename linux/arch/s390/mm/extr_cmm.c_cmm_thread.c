
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERESTARTSYS ;
 scalar_t__ cmm_alloc_pages (int,scalar_t__*,int *) ;
 int cmm_free_pages (int,scalar_t__*,int *) ;
 int cmm_page_list ;
 scalar_t__ cmm_pages ;
 scalar_t__ cmm_pages_target ;
 int cmm_set_timer () ;
 int cmm_suspended ;
 int cmm_thread_wait ;
 int cmm_timed_page_list ;
 scalar_t__ cmm_timed_pages ;
 scalar_t__ cmm_timed_pages_target ;
 int cmm_timer ;
 scalar_t__ kthread_should_stop () ;
 int timer_pending (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int cmm_thread(void *dummy)
{
 int rc;

 while (1) {
  rc = wait_event_interruptible(cmm_thread_wait,
   (!cmm_suspended && (cmm_pages != cmm_pages_target ||
    cmm_timed_pages != cmm_timed_pages_target)) ||
    kthread_should_stop());
  if (kthread_should_stop() || rc == -ERESTARTSYS) {
   cmm_pages_target = cmm_pages;
   cmm_timed_pages_target = cmm_timed_pages;
   break;
  }
  if (cmm_pages_target > cmm_pages) {
   if (cmm_alloc_pages(1, &cmm_pages, &cmm_page_list))
    cmm_pages_target = cmm_pages;
  } else if (cmm_pages_target < cmm_pages) {
   cmm_free_pages(1, &cmm_pages, &cmm_page_list);
  }
  if (cmm_timed_pages_target > cmm_timed_pages) {
   if (cmm_alloc_pages(1, &cmm_timed_pages,
        &cmm_timed_page_list))
    cmm_timed_pages_target = cmm_timed_pages;
  } else if (cmm_timed_pages_target < cmm_timed_pages) {
   cmm_free_pages(1, &cmm_timed_pages,
           &cmm_timed_page_list);
  }
  if (cmm_timed_pages > 0 && !timer_pending(&cmm_timer))
   cmm_set_timer();
 }
 return 0;
}

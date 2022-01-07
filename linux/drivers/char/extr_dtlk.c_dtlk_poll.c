
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int HZ ;
 int TRACE_TEXT (char*) ;
 int del_timer (int *) ;
 scalar_t__ dtlk_has_indexing ;
 int dtlk_process_list ;
 scalar_t__ dtlk_readable () ;
 int dtlk_timer ;
 scalar_t__ dtlk_writeable () ;
 int jiffies ;
 int mod_timer (int *,unsigned long) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t dtlk_poll(struct file *file, poll_table * wait)
{
 __poll_t mask = 0;
 unsigned long expires;

 TRACE_TEXT(" dtlk_poll");






 poll_wait(file, &dtlk_process_list, wait);

 if (dtlk_has_indexing && dtlk_readable()) {
         del_timer(&dtlk_timer);
  mask = EPOLLIN | EPOLLRDNORM;
 }
 if (dtlk_writeable()) {
         del_timer(&dtlk_timer);
  mask |= EPOLLOUT | EPOLLWRNORM;
 }



 expires = jiffies + 3*HZ / 100;
 mod_timer(&dtlk_timer, expires);

 return mask;
}

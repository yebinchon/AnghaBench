
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int opal_msg_queue_empty () ;
 int opal_prd_msg_wait ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t opal_prd_poll(struct file *file,
  struct poll_table_struct *wait)
{
 poll_wait(file, &opal_prd_msg_wait, wait);

 if (!opal_msg_queue_empty())
  return EPOLLIN | EPOLLRDNORM;

 return 0;
}

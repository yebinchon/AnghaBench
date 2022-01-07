
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int next; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ apei_check_mce () ;
 int mce_apei_read_done ;
 int mce_chrdev_wait ;
 TYPE_1__ mcelog ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t mce_chrdev_poll(struct file *file, poll_table *wait)
{
 poll_wait(file, &mce_chrdev_wait, wait);
 if (READ_ONCE(mcelog.next))
  return EPOLLIN | EPOLLRDNORM;
 if (!mce_apei_read_done && apei_check_mce())
  return EPOLLIN | EPOLLRDNORM;
 return 0;
}

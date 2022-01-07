
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reader_dev {int buffer_status; int poll_wait; } ;
struct file {struct reader_dev* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int BS_READABLE ;
 int BS_WRITABLE ;
 int DEBUGP (int,struct reader_dev*,char*,int) ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static __poll_t cm4040_poll(struct file *filp, poll_table *wait)
{
 struct reader_dev *dev = filp->private_data;
 __poll_t mask = 0;

 poll_wait(filp, &dev->poll_wait, wait);

 if (test_and_clear_bit(BS_READABLE, &dev->buffer_status))
  mask |= EPOLLIN | EPOLLRDNORM;
 if (test_and_clear_bit(BS_WRITABLE, &dev->buffer_status))
  mask |= EPOLLOUT | EPOLLWRNORM;

 DEBUGP(2, dev, "<- cm4040_poll(%u)\n", mask);

 return mask;
}

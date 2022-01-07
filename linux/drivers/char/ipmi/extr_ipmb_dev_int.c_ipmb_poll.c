
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmb_dev {int file_mutex; int request_queue_len; int wait_queue; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 struct ipmb_dev* to_ipmb_dev (struct file*) ;

__attribute__((used)) static unsigned int ipmb_poll(struct file *file, poll_table *wait)
{
 struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
 unsigned int mask = POLLOUT;

 mutex_lock(&ipmb_dev->file_mutex);
 poll_wait(file, &ipmb_dev->wait_queue, wait);

 if (atomic_read(&ipmb_dev->request_queue_len))
  mask |= POLLIN;
 mutex_unlock(&ipmb_dev->file_mutex);

 return mask;
}

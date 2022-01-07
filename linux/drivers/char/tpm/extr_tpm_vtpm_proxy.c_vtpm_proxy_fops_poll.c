
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_dev {int state; int buf_lock; scalar_t__ req_len; int wq; } ;
struct file {struct proxy_dev* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int STATE_OPENED_FLAG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t vtpm_proxy_fops_poll(struct file *filp, poll_table *wait)
{
 struct proxy_dev *proxy_dev = filp->private_data;
 __poll_t ret;

 poll_wait(filp, &proxy_dev->wq, wait);

 ret = EPOLLOUT;

 mutex_lock(&proxy_dev->buf_lock);

 if (proxy_dev->req_len)
  ret |= EPOLLIN | EPOLLRDNORM;

 if (!(proxy_dev->state & STATE_OPENED_FLAG))
  ret |= EPOLLHUP;

 mutex_unlock(&proxy_dev->buf_lock);

 return ret;
}

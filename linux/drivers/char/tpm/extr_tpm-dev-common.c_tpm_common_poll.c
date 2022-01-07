
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_priv {int buffer_mutex; scalar_t__ response_length; int async_wait; } ;
struct file {struct file_priv* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__poll_t tpm_common_poll(struct file *file, poll_table *wait)
{
 struct file_priv *priv = file->private_data;
 __poll_t mask = 0;

 poll_wait(file, &priv->async_wait, wait);
 mutex_lock(&priv->buffer_mutex);






 if (priv->response_length)
  mask = EPOLLIN | EPOLLRDNORM;
 else
  mask = EPOLLOUT | EPOLLWRNORM;

 mutex_unlock(&priv->buffer_mutex);
 return mask;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_dev {int wq; int buf_lock; int state; } ;


 int STATE_OPENED_FLAG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void vtpm_proxy_fops_undo_open(struct proxy_dev *proxy_dev)
{
 mutex_lock(&proxy_dev->buf_lock);

 proxy_dev->state &= ~STATE_OPENED_FLAG;

 mutex_unlock(&proxy_dev->buf_lock);


 wake_up_interruptible(&proxy_dev->wq);
}

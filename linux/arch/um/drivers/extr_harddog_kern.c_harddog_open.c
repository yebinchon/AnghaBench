
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int harddog_in_fd ;
 int harddog_mutex ;
 int harddog_out_fd ;
 int lock ;
 char* mconsole_notify_socket () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_watchdog (int *,int *,char*) ;
 int stream_open (struct inode*,struct file*) ;
 int timer_alive ;

__attribute__((used)) static int harddog_open(struct inode *inode, struct file *file)
{
 int err = -EBUSY;
 char *sock = ((void*)0);

 mutex_lock(&harddog_mutex);
 spin_lock(&lock);
 if(timer_alive)
  goto err;







 err = start_watchdog(&harddog_in_fd, &harddog_out_fd, sock);
 if(err)
  goto err;

 timer_alive = 1;
 spin_unlock(&lock);
 mutex_unlock(&harddog_mutex);
 return stream_open(inode, file);
err:
 spin_unlock(&lock);
 mutex_unlock(&harddog_mutex);
 return err;
}

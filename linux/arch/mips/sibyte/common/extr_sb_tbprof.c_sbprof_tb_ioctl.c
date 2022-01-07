
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int tb_read; int lock; } ;


 int EINVAL ;



 int TB_FULL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_user (int ,int*) ;
 TYPE_1__ sbp ;
 int sbprof_zbprof_start (struct file*) ;
 int sbprof_zbprof_stop () ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static long sbprof_tb_ioctl(struct file *filp,
       unsigned int command,
       unsigned long arg)
{
 int err = 0;

 switch (command) {
 case 130:
  mutex_lock(&sbp.lock);
  err = sbprof_zbprof_start(filp);
  mutex_unlock(&sbp.lock);
  break;

 case 129:
  mutex_lock(&sbp.lock);
  err = sbprof_zbprof_stop();
  mutex_unlock(&sbp.lock);
  break;

 case 128: {
  err = wait_event_interruptible(sbp.tb_read, TB_FULL);
  if (err)
   break;

  err = put_user(TB_FULL, (int *) arg);
  break;
 }

 default:
  err = -EINVAL;
  break;
 }

 return err;
}

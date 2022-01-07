
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ open; int lock; int sbprof_tbbuf; scalar_t__ tb_enable; scalar_t__ tb_armed; } ;


 int ENODEV ;
 scalar_t__ SB_CLOSED ;
 int iminor (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ sbp ;
 int sbprof_zbprof_stop () ;
 int vfree (int ) ;
 int wmb () ;

__attribute__((used)) static int sbprof_tb_release(struct inode *inode, struct file *filp)
{
 int minor;

 minor = iminor(inode);
 if (minor != 0 || sbp.open != SB_CLOSED)
  return -ENODEV;

 mutex_lock(&sbp.lock);

 if (sbp.tb_armed || sbp.tb_enable)
  sbprof_zbprof_stop();

 vfree(sbp.sbprof_tbbuf);
 sbp.open = SB_CLOSED;
 wmb();

 mutex_unlock(&sbp.lock);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spu_context {TYPE_1__* switch_log; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_4__ {struct spu_context* i_ctx; } ;
struct TYPE_3__ {int wait; } ;


 int EPOLLIN ;
 TYPE_2__* SPUFS_I (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int poll_wait (struct file*,int *,int *) ;
 int spu_acquire (struct spu_context*) ;
 int spu_release (struct spu_context*) ;
 scalar_t__ spufs_switch_log_used (struct spu_context*) ;

__attribute__((used)) static __poll_t spufs_switch_log_poll(struct file *file, poll_table *wait)
{
 struct inode *inode = file_inode(file);
 struct spu_context *ctx = SPUFS_I(inode)->i_ctx;
 __poll_t mask = 0;
 int rc;

 poll_wait(file, &ctx->switch_log->wait, wait);

 rc = spu_acquire(ctx);
 if (rc)
  return rc;

 if (spufs_switch_log_used(ctx) > 0)
  mask |= EPOLLIN;

 spu_release(ctx);

 return mask;
}

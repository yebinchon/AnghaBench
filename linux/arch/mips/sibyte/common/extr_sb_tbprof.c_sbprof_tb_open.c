
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sbprof_tb {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ open; int lock; int tb_read; int tb_sync; int sbprof_tbbuf; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int MAX_TBSAMPLE_BYTES ;
 scalar_t__ SB_CLOSED ;
 scalar_t__ SB_OPEN ;
 int SB_OPENING ;
 int iminor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int mutex_init (int *) ;
 TYPE_1__ sbp ;
 int vzalloc (int ) ;
 int wmb () ;
 scalar_t__ xchg (scalar_t__*,int ) ;

__attribute__((used)) static int sbprof_tb_open(struct inode *inode, struct file *filp)
{
 int minor;

 minor = iminor(inode);
 if (minor != 0)
  return -ENODEV;

 if (xchg(&sbp.open, SB_OPENING) != SB_CLOSED)
  return -EBUSY;

 memset(&sbp, 0, sizeof(struct sbprof_tb));
 sbp.sbprof_tbbuf = vzalloc(MAX_TBSAMPLE_BYTES);
 if (!sbp.sbprof_tbbuf) {
  sbp.open = SB_CLOSED;
  wmb();
  return -ENOMEM;
 }

 init_waitqueue_head(&sbp.tb_sync);
 init_waitqueue_head(&sbp.tb_read);
 mutex_init(&sbp.lock);

 sbp.open = SB_OPEN;
 wmb();

 return 0;
}

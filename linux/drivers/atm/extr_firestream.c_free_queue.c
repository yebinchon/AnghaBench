
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int sa; int offset; } ;
struct fs_dev {int dummy; } ;


 int FS_DEBUG_ALLOC ;
 int Q_EA (int ) ;
 int Q_RP (int ) ;
 int Q_SA (int ) ;
 int Q_WP (int ) ;
 int fs_dprintk (int ,char*,int ) ;
 int func_enter () ;
 int func_exit () ;
 int kfree (int ) ;
 int write_fs (struct fs_dev*,int ,int ) ;

__attribute__((used)) static void free_queue(struct fs_dev *dev, struct queue *txq)
{
 func_enter ();

 write_fs (dev, Q_SA(txq->offset), 0);
 write_fs (dev, Q_EA(txq->offset), 0);
 write_fs (dev, Q_RP(txq->offset), 0);
 write_fs (dev, Q_WP(txq->offset), 0);


 fs_dprintk (FS_DEBUG_ALLOC, "Free queue: %p\n", txq->sa);
 kfree (txq->sa);

 func_exit ();
}

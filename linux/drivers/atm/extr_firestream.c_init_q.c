
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int offset; struct FS_QENTRY* ea; struct FS_QENTRY* sa; } ;
struct fs_dev {int dummy; } ;
struct FS_QENTRY {int dummy; } ;


 int FS_DEBUG_ALLOC ;
 int FS_DEBUG_INIT ;
 int GFP_KERNEL ;
 int Q_CNF (int) ;
 int Q_EA (int) ;
 int Q_RP (int) ;
 int Q_SA (int) ;
 int Q_WP (int) ;
 struct FS_QENTRY* aligned_kmalloc (int,int ,int) ;
 int fs_dprintk (int ,char*,int,int) ;
 int func_enter () ;
 int func_exit () ;
 int virt_to_bus (struct FS_QENTRY*) ;
 int write_fs (struct fs_dev*,int ,int ) ;

__attribute__((used)) static int init_q(struct fs_dev *dev, struct queue *txq, int queue,
    int nentries, int is_rq)
{
 int sz = nentries * sizeof (struct FS_QENTRY);
 struct FS_QENTRY *p;

 func_enter ();

 fs_dprintk (FS_DEBUG_INIT, "Initializing queue at %x: %d entries:\n",
      queue, nentries);

 p = aligned_kmalloc (sz, GFP_KERNEL, 0x10);
 fs_dprintk (FS_DEBUG_ALLOC, "Alloc queue: %p(%d)\n", p, sz);

 if (!p) return 0;

 write_fs (dev, Q_SA(queue), virt_to_bus(p));
 write_fs (dev, Q_EA(queue), virt_to_bus(p+nentries-1));
 write_fs (dev, Q_WP(queue), virt_to_bus(p));
 write_fs (dev, Q_RP(queue), virt_to_bus(p));
 if (is_rq) {



  write_fs (dev, Q_CNF(queue), 0 );
 }

 txq->sa = p;
 txq->ea = p;
 txq->offset = queue;

 func_exit ();
 return 1;
}

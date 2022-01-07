
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_dev {int dummy; } ;
struct freepool {int offset; int bufsize; int nr_buffers; } ;


 int FP_CNF (int) ;
 int FP_CNT (int) ;
 int FP_CTU (int) ;
 int FP_EA (int) ;
 int FP_SA (int) ;
 int FS_DEBUG_INIT ;
 int RBFP_CME ;
 int RBFP_RBS ;
 int RBFP_RBSVAL ;
 int fs_dprintk (int ,char*,int) ;
 int func_enter () ;
 int func_exit () ;
 int write_fs (struct fs_dev*,int ,int) ;

__attribute__((used)) static int init_fp(struct fs_dev *dev, struct freepool *fp, int queue,
     int bufsize, int nr_buffers)
{
 func_enter ();

 fs_dprintk (FS_DEBUG_INIT, "Initializing free pool at %x:\n", queue);

 write_fs (dev, FP_CNF(queue), (bufsize * RBFP_RBS) | RBFP_RBSVAL | RBFP_CME);
 write_fs (dev, FP_SA(queue), 0);
 write_fs (dev, FP_EA(queue), 0);
 write_fs (dev, FP_CTU(queue), 0);
 write_fs (dev, FP_CNT(queue), 0);

 fp->offset = queue;
 fp->bufsize = bufsize;
 fp->nr_buffers = nr_buffers;

 func_exit ();
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_dev {int dummy; } ;
struct freepool {int offset; } ;


 int FP_CNF (int ) ;
 int FP_CNT (int ) ;
 int FP_CTU (int ) ;
 int FP_EA (int ) ;
 int FP_SA (int ) ;
 int func_enter () ;
 int func_exit () ;
 int write_fs (struct fs_dev*,int ,int ) ;

__attribute__((used)) static void free_freepool(struct fs_dev *dev, struct freepool *fp)
{
 func_enter ();

 write_fs (dev, FP_CNF(fp->offset), 0);
 write_fs (dev, FP_SA (fp->offset), 0);
 write_fs (dev, FP_EA (fp->offset), 0);
 write_fs (dev, FP_CNT(fp->offset), 0);
 write_fs (dev, FP_CTU(fp->offset), 0);

 func_exit ();
}

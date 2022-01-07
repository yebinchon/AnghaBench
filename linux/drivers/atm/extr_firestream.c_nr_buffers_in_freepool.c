
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_dev {int dummy; } ;
struct freepool {int n; int offset; } ;


 int FP_CNT (int ) ;
 int read_fs (struct fs_dev*,int ) ;

__attribute__((used)) static inline int nr_buffers_in_freepool (struct fs_dev *dev, struct freepool *fp)
{




 return fp->n;

}

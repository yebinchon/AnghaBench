
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int atomic_xchg (int *,int) ;
 int prd_usage ;

__attribute__((used)) static int opal_prd_open(struct inode *inode, struct file *file)
{




 if (atomic_xchg(&prd_usage, 1) == 1)
  return -EBUSY;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int FMODE_UNSIGNED_OFFSET ;

__attribute__((used)) static int adi_open(struct inode *inode, struct file *file)
{
 file->f_mode |= FMODE_UNSIGNED_OFFSET;
 return 0;
}

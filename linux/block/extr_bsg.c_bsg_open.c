
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct bsg_device* private_data; } ;
struct bsg_device {int dummy; } ;


 scalar_t__ IS_ERR (struct bsg_device*) ;
 int PTR_ERR (struct bsg_device*) ;
 struct bsg_device* bsg_get_device (struct inode*,struct file*) ;

__attribute__((used)) static int bsg_open(struct inode *inode, struct file *file)
{
 struct bsg_device *bd;

 bd = bsg_get_device(inode, file);

 if (IS_ERR(bd))
  return PTR_ERR(bd);

 file->private_data = bd;
 return 0;
}

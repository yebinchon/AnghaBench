
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct bsg_device* private_data; } ;
struct bsg_device {int dummy; } ;


 int bsg_put_device (struct bsg_device*) ;

__attribute__((used)) static int bsg_release(struct inode *inode, struct file *file)
{
 struct bsg_device *bd = file->private_data;

 file->private_data = ((void*)0);
 return bsg_put_device(bd);
}

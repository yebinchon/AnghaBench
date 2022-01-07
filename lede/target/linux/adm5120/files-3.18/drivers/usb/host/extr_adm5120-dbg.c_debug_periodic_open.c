
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {scalar_t__ private_data; } ;


 int ENOMEM ;
 scalar_t__ alloc_buffer (int ,int ) ;
 int fill_periodic_buffer ;

__attribute__((used)) static int debug_periodic_open(struct inode *inode, struct file *file)
{
 file->private_data = alloc_buffer(inode->i_private,
      fill_periodic_buffer);

 return file->private_data ? 0 : -ENOMEM;
}

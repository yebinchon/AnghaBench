
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int EINVAL ;
 unsigned int MAX_PINS ;
 unsigned int iminor (struct inode*) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int scx200_gpio_ops ;

__attribute__((used)) static int scx200_gpio_open(struct inode *inode, struct file *file)
{
 unsigned m = iminor(inode);
 file->private_data = &scx200_gpio_ops;

 if (m >= MAX_PINS)
  return -EINVAL;
 return nonseekable_open(inode, file);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct blk_mq_debugfs_attr* i_private; } ;
struct file {int dummy; } ;
struct blk_mq_debugfs_attr {scalar_t__ show; } ;


 int seq_release (struct inode*,struct file*) ;
 int single_release (struct inode*,struct file*) ;

__attribute__((used)) static int blk_mq_debugfs_release(struct inode *inode, struct file *file)
{
 const struct blk_mq_debugfs_attr *attr = inode->i_private;

 if (attr->show)
  return single_release(inode, file);

 return seq_release(inode, file);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct blk_mq_debugfs_attr {int mode; scalar_t__ name; } ;
struct TYPE_2__ {void* i_private; } ;


 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int blk_mq_debugfs_fops ;
 TYPE_1__* d_inode (struct dentry*) ;
 int debugfs_create_file (scalar_t__,int ,struct dentry*,void*,int *) ;

__attribute__((used)) static void debugfs_create_files(struct dentry *parent, void *data,
     const struct blk_mq_debugfs_attr *attr)
{
 if (IS_ERR_OR_NULL(parent))
  return;

 d_inode(parent)->i_private = data;

 for (; attr->name; attr++)
  debugfs_create_file(attr->name, attr->mode, parent,
        (void *)attr, &blk_mq_debugfs_fops);
}

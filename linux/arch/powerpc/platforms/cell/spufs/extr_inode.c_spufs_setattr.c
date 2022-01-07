
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;


 int ATTR_SIZE ;
 int EINVAL ;
 struct inode* d_inode (struct dentry*) ;
 int mark_inode_dirty (struct inode*) ;
 int setattr_copy (struct inode*,struct iattr*) ;

__attribute__((used)) static int
spufs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);

 if ((attr->ia_valid & ATTR_SIZE) &&
     (attr->ia_size != inode->i_size))
  return -EINVAL;
 setattr_copy(inode, attr);
 mark_inode_dirty(inode);
 return 0;
}

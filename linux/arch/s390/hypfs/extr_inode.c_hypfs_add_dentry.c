
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_fsdata; } ;


 struct dentry* hypfs_last_dentry ;

__attribute__((used)) static void hypfs_add_dentry(struct dentry *dentry)
{
 dentry->d_fsdata = hypfs_last_dentry;
 hypfs_last_dentry = dentry;
}

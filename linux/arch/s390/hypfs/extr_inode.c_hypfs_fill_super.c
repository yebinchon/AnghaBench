
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct dentry* s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; struct hypfs_sb_info* s_fs_info; } ;
struct inode {int * i_fop; int * i_op; } ;
struct hypfs_sb_info {struct dentry* update_file; } ;
struct fs_context {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int HYPFS_MAGIC ;
 scalar_t__ IS_ERR (struct dentry*) ;
 scalar_t__ MACHINE_IS_VM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct dentry*) ;
 int S_IFDIR ;
 struct dentry* d_make_root (struct inode*) ;
 struct dentry* hypfs_create_update_file (struct dentry*) ;
 int hypfs_diag_create_files (struct dentry*) ;
 struct inode* hypfs_make_inode (struct super_block*,int) ;
 int hypfs_s_ops ;
 int hypfs_update_update (struct super_block*) ;
 int hypfs_vm_create_files (struct dentry*) ;
 int pr_info (char*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

__attribute__((used)) static int hypfs_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct hypfs_sb_info *sbi = sb->s_fs_info;
 struct inode *root_inode;
 struct dentry *root_dentry, *update_file;
 int rc;

 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = HYPFS_MAGIC;
 sb->s_op = &hypfs_s_ops;

 root_inode = hypfs_make_inode(sb, S_IFDIR | 0755);
 if (!root_inode)
  return -ENOMEM;
 root_inode->i_op = &simple_dir_inode_operations;
 root_inode->i_fop = &simple_dir_operations;
 sb->s_root = root_dentry = d_make_root(root_inode);
 if (!root_dentry)
  return -ENOMEM;
 if (MACHINE_IS_VM)
  rc = hypfs_vm_create_files(root_dentry);
 else
  rc = hypfs_diag_create_files(root_dentry);
 if (rc)
  return rc;
 update_file = hypfs_create_update_file(root_dentry);
 if (IS_ERR(update_file))
  return PTR_ERR(update_file);
 sbi->update_file = update_file;
 hypfs_update_update(sb);
 pr_info("Hypervisor filesystem mounted\n");
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct binderfs_info* s_fs_info; struct dentry* s_root; } ;
struct dentry {int dummy; } ;
struct binderfs_info {struct dentry* proc_log_dir; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int binder_state_fops ;
 int binder_stats_fops ;
 int binder_transaction_log ;
 int binder_transaction_log_failed ;
 int binder_transaction_log_fops ;
 int binder_transactions_fops ;
 struct dentry* binderfs_create_dir (struct dentry*,char*) ;
 struct dentry* binderfs_create_file (struct dentry*,char*,int *,int *) ;

__attribute__((used)) static int init_binder_logs(struct super_block *sb)
{
 struct dentry *binder_logs_root_dir, *dentry, *proc_log_dir;
 struct binderfs_info *info;
 int ret = 0;

 binder_logs_root_dir = binderfs_create_dir(sb->s_root,
         "binder_logs");
 if (IS_ERR(binder_logs_root_dir)) {
  ret = PTR_ERR(binder_logs_root_dir);
  goto out;
 }

 dentry = binderfs_create_file(binder_logs_root_dir, "stats",
          &binder_stats_fops, ((void*)0));
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto out;
 }

 dentry = binderfs_create_file(binder_logs_root_dir, "state",
          &binder_state_fops, ((void*)0));
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto out;
 }

 dentry = binderfs_create_file(binder_logs_root_dir, "transactions",
          &binder_transactions_fops, ((void*)0));
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto out;
 }

 dentry = binderfs_create_file(binder_logs_root_dir,
          "transaction_log",
          &binder_transaction_log_fops,
          &binder_transaction_log);
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto out;
 }

 dentry = binderfs_create_file(binder_logs_root_dir,
          "failed_transaction_log",
          &binder_transaction_log_fops,
          &binder_transaction_log_failed);
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto out;
 }

 proc_log_dir = binderfs_create_dir(binder_logs_root_dir, "proc");
 if (IS_ERR(proc_log_dir)) {
  ret = PTR_ERR(proc_log_dir);
  goto out;
 }
 info = sb->s_fs_info;
 info->proc_log_dir = proc_log_dir;

out:
 return ret;
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {struct binderfs_info* s_fs_info; struct dentry* s_root; } ;
struct dentry {int dummy; } ;
struct binderfs_info {struct dentry* proc_log_dir; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  binder_state_fops ; 
 int /*<<< orphan*/  binder_stats_fops ; 
 int /*<<< orphan*/  binder_transaction_log ; 
 int /*<<< orphan*/  binder_transaction_log_failed ; 
 int /*<<< orphan*/  binder_transaction_log_fops ; 
 int /*<<< orphan*/  binder_transactions_fops ; 
 struct dentry* FUNC2 (struct dentry*,char*) ; 
 struct dentry* FUNC3 (struct dentry*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb)
{
	struct dentry *binder_logs_root_dir, *dentry, *proc_log_dir;
	struct binderfs_info *info;
	int ret = 0;

	binder_logs_root_dir = FUNC2(sb->s_root,
						   "binder_logs");
	if (FUNC0(binder_logs_root_dir)) {
		ret = FUNC1(binder_logs_root_dir);
		goto out;
	}

	dentry = FUNC3(binder_logs_root_dir, "stats",
				      &binder_stats_fops, NULL);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto out;
	}

	dentry = FUNC3(binder_logs_root_dir, "state",
				      &binder_state_fops, NULL);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto out;
	}

	dentry = FUNC3(binder_logs_root_dir, "transactions",
				      &binder_transactions_fops, NULL);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto out;
	}

	dentry = FUNC3(binder_logs_root_dir,
				      "transaction_log",
				      &binder_transaction_log_fops,
				      &binder_transaction_log);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto out;
	}

	dentry = FUNC3(binder_logs_root_dir,
				      "failed_transaction_log",
				      &binder_transaction_log_fops,
				      &binder_transaction_log_failed);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto out;
	}

	proc_log_dir = FUNC2(binder_logs_root_dir, "proc");
	if (FUNC0(proc_log_dir)) {
		ret = FUNC1(proc_log_dir);
		goto out;
	}
	info = sb->s_fs_info;
	info->proc_log_dir = proc_log_dir;

out:
	return ret;
}
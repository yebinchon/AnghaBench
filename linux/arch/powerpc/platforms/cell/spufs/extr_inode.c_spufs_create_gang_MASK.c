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
typedef  int umode_t ;
struct vfsmount {int dummy; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct inode*,struct dentry*) ; 
 int FUNC2 (struct path*) ; 
 int FUNC3 (struct inode*,struct dentry*,int) ; 

__attribute__((used)) static int FUNC4(struct inode *inode,
			struct dentry *dentry,
			struct vfsmount *mnt, umode_t mode)
{
	struct path path = {.mnt = mnt, .dentry = dentry};
	int ret;

	ret = FUNC3(inode, dentry, mode & 0777);
	if (!ret) {
		ret = FUNC2(&path);
		if (ret < 0) {
			int err = FUNC1(inode, dentry);
			FUNC0(err);
		}
	}
	return ret;
}
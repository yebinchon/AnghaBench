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
struct path {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct kstat {int mode; } ;
struct iattr {int ia_mode; int ia_valid; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  AT_STATX_SYNC_AS_STAT ; 
 int ENOENT ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int STATX_MODE ; 
 int STATX_TYPE ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (struct device*,int /*<<< orphan*/ ,struct kstat*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC9 (char const*,struct path*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct iattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct path*) ; 
 scalar_t__ FUNC12 (char const*,char) ; 
 int FUNC13 (struct path*,struct kstat*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(const char *nodename, struct device *dev)
{
	struct path parent;
	struct dentry *dentry;
	int deleted = 0;
	int err;

	dentry = FUNC9(nodename, &parent);
	if (FUNC0(dentry))
		return FUNC1(dentry);

	if (FUNC3(dentry)) {
		struct kstat stat;
		struct path p = {.mnt = parent.mnt, .dentry = dentry};
		err = FUNC13(&p, &stat, STATX_TYPE | STATX_MODE,
				  AT_STATX_SYNC_AS_STAT);
		if (!err && FUNC5(dev, FUNC2(dentry), &stat)) {
			struct iattr newattrs;
			/*
			 * before unlinking this node, reset permissions
			 * of possible references like hardlinks
			 */
			newattrs.ia_uid = GLOBAL_ROOT_UID;
			newattrs.ia_gid = GLOBAL_ROOT_GID;
			newattrs.ia_mode = stat.mode & ~0777;
			newattrs.ia_valid =
				ATTR_UID|ATTR_GID|ATTR_MODE;
			FUNC7(FUNC2(dentry));
			FUNC10(dentry, &newattrs, NULL);
			FUNC8(FUNC2(dentry));
			err = FUNC14(FUNC2(parent.dentry), dentry, NULL);
			if (!err || err == -ENOENT)
				deleted = 1;
		}
	} else {
		err = -ENOENT;
	}
	FUNC6(dentry);
	FUNC8(FUNC2(parent.dentry));

	FUNC11(&parent);
	if (deleted && FUNC12(nodename, '/'))
		FUNC4(nodename);
	return err;
}
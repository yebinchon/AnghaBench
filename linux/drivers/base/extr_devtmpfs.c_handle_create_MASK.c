#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct path {struct dentry* dentry; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; int /*<<< orphan*/  ia_mode; } ;
struct device {int /*<<< orphan*/  devt; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_5__ {int /*<<< orphan*/ * i_private; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 TYPE_1__* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 struct dentry* FUNC8 (int /*<<< orphan*/ ,char const*,struct path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*,struct iattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread ; 
 int FUNC10 (TYPE_1__*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const char *nodename, umode_t mode, kuid_t uid,
			 kgid_t gid, struct device *dev)
{
	struct dentry *dentry;
	struct path path;
	int err;

	dentry = FUNC8(AT_FDCWD, nodename, &path, 0);
	if (dentry == FUNC0(-ENOENT)) {
		FUNC3(nodename);
		dentry = FUNC8(AT_FDCWD, nodename, &path, 0);
	}
	if (FUNC1(dentry))
		return FUNC2(dentry);

	err = FUNC10(FUNC4(path.dentry), dentry, mode, dev->devt);
	if (!err) {
		struct iattr newattrs;

		newattrs.ia_mode = mode;
		newattrs.ia_uid = uid;
		newattrs.ia_gid = gid;
		newattrs.ia_valid = ATTR_MODE|ATTR_UID|ATTR_GID;
		FUNC6(FUNC4(dentry));
		FUNC9(dentry, &newattrs, NULL);
		FUNC7(FUNC4(dentry));

		/* mark as kernel-created inode */
		FUNC4(dentry)->i_private = &thread;
	}
	FUNC5(&path, dentry);
	return err;
}
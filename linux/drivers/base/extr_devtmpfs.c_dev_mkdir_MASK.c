#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct path {struct dentry* dentry; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * i_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  LOOKUP_DIRECTORY ; 
 int FUNC1 (struct dentry*) ; 
 TYPE_1__* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct path*,struct dentry*) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ,char const*,struct path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread ; 
 int FUNC5 (TYPE_1__*,struct dentry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *name, umode_t mode)
{
	struct dentry *dentry;
	struct path path;
	int err;

	dentry = FUNC4(AT_FDCWD, name, &path, LOOKUP_DIRECTORY);
	if (FUNC0(dentry))
		return FUNC1(dentry);

	err = FUNC5(FUNC2(path.dentry), dentry, mode);
	if (!err)
		/* mark as kernel-created inode */
		FUNC2(dentry)->i_private = &thread;
	FUNC3(&path, dentry);
	return err;
}
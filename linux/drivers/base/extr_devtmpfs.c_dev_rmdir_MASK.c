#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct path {struct dentry* dentry; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * i_private; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 TYPE_1__* FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct dentry* FUNC6 (char const*,struct path*) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int /*<<< orphan*/  thread ; 
 int FUNC8 (TYPE_1__*,struct dentry*) ; 

__attribute__((used)) static int FUNC9(const char *name)
{
	struct path parent;
	struct dentry *dentry;
	int err;

	dentry = FUNC6(name, &parent);
	if (FUNC0(dentry))
		return FUNC1(dentry);
	if (FUNC3(dentry)) {
		if (FUNC2(dentry)->i_private == &thread)
			err = FUNC8(FUNC2(parent.dentry), dentry);
		else
			err = -EPERM;
	} else {
		err = -ENOENT;
	}
	FUNC4(dentry);
	FUNC5(FUNC2(parent.dentry));
	FUNC7(&parent);
	return err;
}
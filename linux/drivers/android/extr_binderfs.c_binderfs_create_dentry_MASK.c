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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static struct dentry *FUNC6(struct dentry *parent,
					     const char *name)
{
	struct dentry *dentry;

	dentry = FUNC4(name, parent, FUNC5(name));
	if (FUNC1(dentry))
		return dentry;

	/* Return error if the file/dir already exists. */
	if (FUNC2(dentry)) {
		FUNC3(dentry);
		return FUNC0(-EEXIST);
	}

	return dentry;
}
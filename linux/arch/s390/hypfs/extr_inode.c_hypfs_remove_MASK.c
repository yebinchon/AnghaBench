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
struct dentry {struct dentry* d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct dentry*) ; 

__attribute__((used)) static void FUNC9(struct dentry *dentry)
{
	struct dentry *parent;

	parent = dentry->d_parent;
	FUNC4(FUNC1(parent));
	if (FUNC6(dentry)) {
		if (FUNC2(dentry))
			FUNC7(FUNC1(parent), dentry);
		else
			FUNC8(FUNC1(parent), dentry);
	}
	FUNC0(dentry);
	FUNC3(dentry);
	FUNC5(FUNC1(parent));
}
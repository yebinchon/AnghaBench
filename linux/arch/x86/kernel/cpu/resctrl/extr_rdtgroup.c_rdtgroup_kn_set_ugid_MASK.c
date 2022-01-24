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
struct kernfs_node {int dummy; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kernfs_node*,struct iattr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct kernfs_node *kn)
{
	struct iattr iattr = { .ia_valid = ATTR_UID | ATTR_GID,
				.ia_uid = FUNC1(),
				.ia_gid = FUNC0(), };

	if (FUNC4(iattr.ia_uid, GLOBAL_ROOT_UID) &&
	    FUNC2(iattr.ia_gid, GLOBAL_ROOT_GID))
		return 0;

	return FUNC3(kn, &iattr);
}
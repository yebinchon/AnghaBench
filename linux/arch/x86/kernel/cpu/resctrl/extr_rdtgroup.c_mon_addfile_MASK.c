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

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 int FUNC1 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC2 (struct kernfs_node*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 
 int /*<<< orphan*/  kf_mondata_ops ; 
 int FUNC4 (struct kernfs_node*) ; 

__attribute__((used)) static int FUNC5(struct kernfs_node *parent_kn, const char *name,
		       void *priv)
{
	struct kernfs_node *kn;
	int ret = 0;

	kn = FUNC2(parent_kn, name, 0444,
				  GLOBAL_ROOT_UID, GLOBAL_ROOT_GID, 0,
				  &kf_mondata_ops, priv, NULL, NULL);
	if (FUNC0(kn))
		return FUNC1(kn);

	ret = FUNC4(kn);
	if (ret) {
		FUNC3(kn);
		return ret;
	}

	return ret;
}
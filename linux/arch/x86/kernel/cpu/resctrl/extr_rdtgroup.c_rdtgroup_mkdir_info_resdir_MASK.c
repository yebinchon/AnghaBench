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
struct rdt_resource {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kernfs_node*) ; 
 int FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct kernfs_node*) ; 
 struct kernfs_node* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,struct rdt_resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct kernfs_node*) ; 
 TYPE_1__* kn_info ; 
 int FUNC5 (struct kernfs_node*,unsigned long) ; 
 int FUNC6 (struct kernfs_node*) ; 

__attribute__((used)) static int FUNC7(struct rdt_resource *r, char *name,
				      unsigned long fflags)
{
	struct kernfs_node *kn_subdir;
	int ret;

	kn_subdir = FUNC3(kn_info, name,
				      kn_info->mode, r);
	if (FUNC0(kn_subdir))
		return FUNC1(kn_subdir);

	FUNC4(kn_subdir);
	ret = FUNC6(kn_subdir);
	if (ret)
		return ret;

	ret = FUNC5(kn_subdir, fflags);
	if (!ret)
		FUNC2(kn_subdir);

	return ret;
}
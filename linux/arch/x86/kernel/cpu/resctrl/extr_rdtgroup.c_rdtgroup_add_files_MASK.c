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
struct rftype {unsigned long fflags; int /*<<< orphan*/  name; } ;
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rftype*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct kernfs_node*,struct rftype*) ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 
 struct rftype* res_common_files ; 

__attribute__((used)) static int FUNC5(struct kernfs_node *kn, unsigned long fflags)
{
	struct rftype *rfts, *rft;
	int ret, len;

	rfts = res_common_files;
	len = FUNC0(res_common_files);

	FUNC2(&rdtgroup_mutex);

	for (rft = rfts; rft < rfts + len; rft++) {
		if ((fflags & rft->fflags) == rft->fflags) {
			ret = FUNC4(kn, rft);
			if (ret)
				goto error;
		}
	}

	return 0;
error:
	FUNC3("Failed to add %s, err=%d\n", rft->name, ret);
	while (--rft >= rfts) {
		if ((fflags & rft->fflags) == rft->fflags)
			FUNC1(kn, rft->name);
	}
	return ret;
}
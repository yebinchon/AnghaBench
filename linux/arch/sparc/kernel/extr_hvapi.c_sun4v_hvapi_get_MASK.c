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
struct api_info {unsigned long major; unsigned long minor; scalar_t__ refcnt; } ;

/* Variables and functions */
 int EINVAL ; 
 struct api_info* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  hvapi_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(unsigned long group,
		    unsigned long *major,
		    unsigned long *minor)
{
	struct api_info *p;
	unsigned long flags;
	int ret;

	FUNC1(&hvapi_lock, flags);
	ret = -EINVAL;
	p = FUNC0(group);
	if (p && p->refcnt) {
		*major = p->major;
		*minor = p->minor;
		ret = 0;
	}
	FUNC2(&hvapi_lock, flags);

	return ret;
}
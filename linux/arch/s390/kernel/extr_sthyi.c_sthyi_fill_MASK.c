#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_2__ {int /*<<< orphan*/  info; int /*<<< orphan*/  end; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sthyi_cache ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  sthyi_mutex ; 
 int FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(void *dst, u64 *rc)
{
	int r;

	FUNC1(&sthyi_mutex);
	r = FUNC3();
	if (r)
		goto out;

	if (FUNC5(sthyi_cache.end)) {
		/* cache expired */
		r = FUNC4(rc);
		if (r)
			goto out;
	}
	*rc = 0;
	FUNC0(dst, sthyi_cache.info, PAGE_SIZE);
out:
	FUNC2(&sthyi_mutex);
	return r;
}
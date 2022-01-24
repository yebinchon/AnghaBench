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
struct dcss_segment {int do_nonshared; unsigned long start_addr; unsigned long end; int vm_segtype; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int ENOSYS ; 
 int EPERM ; 
 int /*<<< orphan*/  MACHINE_IS_VM ; 
 int FUNC0 (char*,int,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  dcss_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct dcss_segment* FUNC4 (char*) ; 

int
FUNC5 (char *name, int do_nonshared, unsigned long *addr,
		unsigned long *end)
{
	struct dcss_segment *seg;
	int rc;

	if (!MACHINE_IS_VM)
		return -ENOSYS;

	FUNC1(&dcss_lock);
	seg = FUNC4 (name);
	if (seg == NULL)
		rc = FUNC0 (name, do_nonshared, addr, end);
	else {
		if (do_nonshared == seg->do_nonshared) {
			FUNC3(&seg->ref_count);
			*addr = seg->start_addr;
			*end  = seg->end;
			rc    = seg->vm_segtype;
		} else {
			*addr = *end = 0;
			rc    = -EPERM;
		}
	}
	FUNC2(&dcss_lock);
	return rc;
}
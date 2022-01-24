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
struct dcss_segment {int /*<<< orphan*/  dcss_name; int /*<<< orphan*/  list; scalar_t__ start_addr; scalar_t__ end; struct dcss_segment* res; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACHINE_IS_VM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  dcss_lock ; 
 int /*<<< orphan*/  FUNC1 (struct dcss_segment*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  purgeseg_scode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dcss_segment*) ; 
 struct dcss_segment* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 

void
FUNC10(char *name)
{
	unsigned long dummy;
	struct dcss_segment *seg;

	if (!MACHINE_IS_VM)
		return;

	FUNC3(&dcss_lock);
	seg = FUNC8 (name);
	if (seg == NULL) {
		FUNC5("Unloading unknown DCSS %s failed\n", name);
		goto out_unlock;
	}
	if (!FUNC6(&seg->ref_count))
		goto out_unlock;
	FUNC7(seg->res);
	FUNC1(seg->res);
	FUNC9(seg->start_addr, seg->end - seg->start_addr + 1);
	FUNC2(&seg->list);
	FUNC0(&purgeseg_scode, seg->dcss_name, &dummy, &dummy);
	FUNC1(seg);
out_unlock:
	FUNC4(&dcss_lock);
}
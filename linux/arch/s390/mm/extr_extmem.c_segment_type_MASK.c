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
struct dcss_segment {int vm_segtype; int /*<<< orphan*/  dcss_name; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  MACHINE_IS_VM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dcss_segment*) ; 

int
FUNC2 (char* name)
{
	int rc;
	struct dcss_segment seg;

	if (!MACHINE_IS_VM)
		return -ENOSYS;

	FUNC0(name, seg.dcss_name);
	rc = FUNC1 (&seg);
	if (rc < 0)
		return rc;
	return seg.vm_segtype;
}
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
typedef  int /*<<< orphan*/  umode_t ;
typedef  scalar_t__ uid_t ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  debug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  debug_flush_view ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_level_view ; 
 int /*<<< orphan*/  debug_mutex ; 
 int /*<<< orphan*/  debug_pages_view ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  initialized ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

debug_info_t *FUNC7(const char *name, int pages_per_area,
				  int nr_areas, int buf_size, umode_t mode,
				  uid_t uid, gid_t gid)
{
	debug_info_t *rc = NULL;

	/* Since debugfs currently does not support uid/gid other than root, */
	/* we do not allow gid/uid != 0 until we get support for that. */
	if ((uid != 0) || (gid != 0))
		FUNC6("Root becomes the owner of all s390dbf files in sysfs\n");
	FUNC0(!initialized);
	FUNC3(&debug_mutex);

	/* create new debug_info */
	rc = FUNC1(name, pages_per_area, nr_areas, buf_size, mode);
	if (!rc)
		goto out;
	FUNC2(rc, &debug_level_view);
	FUNC2(rc, &debug_flush_view);
	FUNC2(rc, &debug_pages_view);
out:
	if (!rc)
		FUNC5("Registering debug feature %s failed\n", name);
	FUNC4(&debug_mutex);
	return rc;
}
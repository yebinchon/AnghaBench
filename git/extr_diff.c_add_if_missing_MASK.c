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
struct repository {int dummy; } ;
struct oid_array {int dummy; } ;
struct diff_filespec {int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; scalar_t__ oid_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJECT_INFO_FOR_PREFETCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct oid_array*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct repository *r,
			   struct oid_array *to_fetch,
			   const struct diff_filespec *filespec)
{
	if (filespec && filespec->oid_valid &&
	    !FUNC0(filespec->mode) &&
	    FUNC2(r, &filespec->oid, NULL,
				     OBJECT_INFO_FOR_PREFETCH))
		FUNC1(to_fetch, &filespec->oid);
}
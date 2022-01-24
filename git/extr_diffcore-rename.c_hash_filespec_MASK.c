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
struct diff_filespec {int /*<<< orphan*/  oid; int /*<<< orphan*/  size; int /*<<< orphan*/  data; int /*<<< orphan*/  oid_valid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct repository*,struct diff_filespec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC3(struct repository *r,
				  struct diff_filespec *filespec)
{
	if (!filespec->oid_valid) {
		if (FUNC0(r, filespec, 0))
			return 0;
		FUNC1(filespec->data, filespec->size, "blob",
				 &filespec->oid);
	}
	return FUNC2(&filespec->oid);
}
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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct diff_filespec {int /*<<< orphan*/  path; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_filespec*,struct object_id*,int,unsigned short) ; 
 scalar_t__ FUNC2 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct object_id*,unsigned short*) ; 

__attribute__((used)) static void FUNC3(struct repository *r, struct commit *commit,
			   struct diff_filespec *spec)
{
	unsigned short mode;
	struct object_id oid;

	if (FUNC2(r, &commit->object.oid, spec->path, &oid, &mode))
		FUNC0("There is no path %s in the commit", spec->path);
	FUNC1(spec, &oid, 1, mode);

	return;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  scan_name ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_refname_t ;
typedef  scalar_t__ git_reference_t ;
struct TYPE_6__ {int /*<<< orphan*/  symbolic; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ target; } ;
typedef  TYPE_2__ git_reference ;
typedef  int /*<<< orphan*/  git_refdb ;

/* Variables and functions */
 int DEFAULT_NESTING_LEVEL ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 scalar_t__ GIT_REFERENCE_DIRECT ; 
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int MAX_NESTING_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(
	git_reference **ref_out,
	git_repository *repo,
	const char *name,
	int max_nesting)
{
	git_refname_t scan_name;
	git_reference_t scan_type;
	int error = 0, nesting;
	git_reference *ref = NULL;
	git_refdb *refdb;

	FUNC0(ref_out && repo && name);

	*ref_out = NULL;

	if (max_nesting > MAX_NESTING_LEVEL)
		max_nesting = MAX_NESTING_LEVEL;
	else if (max_nesting < 0)
		max_nesting = DEFAULT_NESTING_LEVEL;

	scan_type = GIT_REFERENCE_SYMBOLIC;

	if ((error = FUNC5(scan_name, repo, name, true)) < 0)
		return error;

	if ((error = FUNC4(&refdb, repo)) < 0)
		return error;

	for (nesting = max_nesting;
		 nesting >= 0 && scan_type == GIT_REFERENCE_SYMBOLIC;
		 nesting--)
	{
		if (nesting != max_nesting) {
			FUNC6(scan_name, ref->target.symbolic, sizeof(scan_name));
			FUNC3(ref);
		}

		if ((error = FUNC2(&ref, refdb, scan_name)) < 0)
			return error;

		scan_type = ref->type;
	}

	if (scan_type != GIT_REFERENCE_DIRECT && max_nesting != 0) {
		FUNC1(GIT_ERROR_REFERENCE,
			"cannot resolve reference (>%u levels deep)", max_nesting);
		FUNC3(ref);
		return -1;
	}

	*ref_out = ref;
	return 0;
}
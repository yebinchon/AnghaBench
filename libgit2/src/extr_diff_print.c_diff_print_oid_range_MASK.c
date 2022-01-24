#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int id_abbrev; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int id_abbrev; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_2__ old_file; TYPE_1__ new_file; } ;
typedef  TYPE_3__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_PATCH ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
	git_buf *out, const git_diff_delta *delta, int id_strlen)
{
	char start_oid[GIT_OID_HEXSZ+1], end_oid[GIT_OID_HEXSZ+1];

	if (delta->old_file.mode &&
			id_strlen > delta->old_file.id_abbrev) {
		FUNC3(GIT_ERROR_PATCH,
			"the patch input contains %d id characters (cannot print %d)",
			delta->old_file.id_abbrev, id_strlen);
		return -1;
	}

	if ((delta->new_file.mode &&
			id_strlen > delta->new_file.id_abbrev)) {
		FUNC3(GIT_ERROR_PATCH,
			"the patch input contains %d id characters (cannot print %d)",
			delta->new_file.id_abbrev, id_strlen);
		return -1;
	}

	FUNC4(start_oid, id_strlen + 1, &delta->old_file.id);
	FUNC4(end_oid, id_strlen + 1, &delta->new_file.id);

	if (delta->old_file.mode == delta->new_file.mode) {
		FUNC2(out, "index %s..%s %o\n",
			start_oid, end_oid, delta->old_file.mode);
	} else {
		if (delta->old_file.mode == 0)
			FUNC2(out, "new file mode %o\n", delta->new_file.mode);
		else if (delta->new_file.mode == 0)
			FUNC2(out, "deleted file mode %o\n", delta->old_file.mode);
		else
			FUNC0(out, delta);

		FUNC2(out, "index %s..%s\n", start_oid, end_oid);
	}

	return FUNC1(out) ? -1 : 0;
}
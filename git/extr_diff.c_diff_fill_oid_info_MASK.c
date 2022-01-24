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
struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct diff_filespec {int /*<<< orphan*/  oid; int /*<<< orphan*/  path; scalar_t__ is_stdin; int /*<<< orphan*/  oid_valid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct index_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct stat*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct diff_filespec *one, struct index_state *istate)
{
	if (FUNC0(one)) {
		if (!one->oid_valid) {
			struct stat st;
			if (one->is_stdin) {
				FUNC5(&one->oid);
				return;
			}
			if (FUNC4(one->path, &st) < 0)
				FUNC2("stat '%s'", one->path);
			if (FUNC3(istate, &one->oid, one->path, &st, 0))
				FUNC1("cannot hash %s", one->path);
		}
	}
	else
		FUNC5(&one->oid);
}
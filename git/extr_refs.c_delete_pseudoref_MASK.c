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
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;

/* Variables and functions */
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (char*,char const*) ; 
 int FUNC6 (struct lock_file*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC8 (struct object_id*,struct object_id const*) ; 
 scalar_t__ FUNC9 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC10 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(const char *pseudoref, const struct object_id *old_oid)
{
	const char *filename;

	filename = FUNC5("%s", pseudoref);

	if (old_oid && !FUNC7(old_oid)) {
		struct lock_file lock = LOCK_INIT;
		int fd;
		struct object_id actual_old_oid;

		fd = FUNC6(
				&lock, filename, 0,
				FUNC4());
		if (fd < 0) {
			FUNC3(FUNC0("could not open '%s' for writing"),
				    filename);
			return -1;
		}
		if (FUNC9(pseudoref, &actual_old_oid))
			FUNC1(FUNC0("could not read ref '%s'"), pseudoref);
		if (!FUNC8(&actual_old_oid, old_oid)) {
			FUNC2(FUNC0("unexpected object ID when deleting '%s'"),
			      pseudoref);
			FUNC10(&lock);
			return -1;
		}

		FUNC11(filename);
		FUNC10(&lock);
	} else {
		FUNC11(filename);
	}

	return 0;
}
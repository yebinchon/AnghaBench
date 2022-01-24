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
struct lock_file {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct lock_file LOCK_INIT ; 
 scalar_t__ FUNC0 (struct lock_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  export_marks_file ; 
 int /*<<< orphan*/  failure ; 
 int /*<<< orphan*/ * FUNC4 (struct lock_file*,char*) ; 
 scalar_t__ FUNC5 (struct lock_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ import_marks_file ; 
 int /*<<< orphan*/  import_marks_file_done ; 
 int /*<<< orphan*/  marks ; 
 int /*<<< orphan*/  FUNC6 (struct lock_file*) ; 
 char* FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{
	struct lock_file mark_lock = LOCK_INIT;
	FILE *f;

	if (!export_marks_file || (import_marks_file && !import_marks_file_done))
		return;

	if (FUNC5(&mark_lock, export_marks_file, 0) < 0) {
		failure |= FUNC3("Unable to write marks file %s",
				       export_marks_file);
		return;
	}

	f = FUNC4(&mark_lock, "w");
	if (!f) {
		int saved_errno = errno;
		FUNC6(&mark_lock);
		failure |= FUNC2("Unable to write marks file %s: %s",
			export_marks_file, FUNC7(saved_errno));
		return;
	}

	FUNC1(f, 0, marks);
	if (FUNC0(&mark_lock)) {
		failure |= FUNC3("Unable to write file %s",
				       export_marks_file);
		return;
	}
}
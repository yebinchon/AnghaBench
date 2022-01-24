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
typedef  int /*<<< orphan*/  tsdn_t ;

/* Variables and functions */
 int PROF_DUMP_FILENAME_LEN ; 
 int /*<<< orphan*/  QUANTUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_dump_filename_mtx ; 
 char* prof_dump_prefix ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

bool
FUNC8(tsdn_t *tsdn, const char *prefix) {
	FUNC3(config_prof);
	FUNC4(tsdn);
	FUNC5(tsdn, &prof_dump_filename_mtx);
	if (prof_dump_prefix == NULL) {
		FUNC6(tsdn, &prof_dump_filename_mtx);
		/* Everything is still guarded by ctl_mtx. */
		char *buffer = FUNC2(tsdn, FUNC1(), PROF_DUMP_FILENAME_LEN,
		    QUANTUM);
		if (buffer == NULL) {
			return true;
		}
		FUNC5(tsdn, &prof_dump_filename_mtx);
		prof_dump_prefix = buffer;
	}
	FUNC0(prof_dump_prefix != NULL);

	FUNC7(prof_dump_prefix, prefix, PROF_DUMP_FILENAME_LEN - 1);
	prof_dump_prefix[PROF_DUMP_FILENAME_LEN - 1] = '\0';
	FUNC6(tsdn, &prof_dump_filename_mtx);

	return false;
}
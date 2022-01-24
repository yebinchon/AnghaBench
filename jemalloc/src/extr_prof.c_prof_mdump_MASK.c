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
typedef  int /*<<< orphan*/  tsd_t ;

/* Variables and functions */
 int DUMP_FILENAME_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opt_prof ; 
 int /*<<< orphan*/  prof_booted ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prof_dump_filename_mtx ; 
 int /*<<< orphan*/  prof_dump_mseq ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

bool
FUNC9(tsd_t *tsd, const char *filename) {
	FUNC1(config_prof);
	FUNC0(FUNC7(tsd) == 0);

	if (!opt_prof || !prof_booted) {
		return true;
	}
	char filename_buf[DUMP_FILENAME_BUFSIZE];
	if (filename == NULL) {
		/* No filename specified, so automatically generate one. */
		FUNC2(FUNC8(tsd), &prof_dump_filename_mtx);
		if (FUNC6(FUNC8(tsd))[0] == '\0') {
			FUNC3(FUNC8(tsd), &prof_dump_filename_mtx);
			return true;
		}
		FUNC5(tsd, filename_buf, 'm', prof_dump_mseq);
		prof_dump_mseq++;
		FUNC3(FUNC8(tsd), &prof_dump_filename_mtx);
		filename = filename_buf;
	}
	return FUNC4(tsd, true, filename, false);
}
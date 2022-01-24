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
 int /*<<< orphan*/  VSEQ_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int opt_prof_final ; 
 int /*<<< orphan*/  opt_prof_leak ; 
 int /*<<< orphan*/  prof_booted ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prof_dump_filename_mtx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(void) {
	tsd_t *tsd;
	char filename[DUMP_FILENAME_BUFSIZE];

	FUNC1(config_prof);
	FUNC0(opt_prof_final);

	if (!prof_booted) {
		return;
	}
	tsd = FUNC7();
	FUNC0(FUNC8(tsd) == 0);
	FUNC0(!FUNC6(FUNC9(tsd)));

	FUNC2(FUNC9(tsd), &prof_dump_filename_mtx);
	FUNC5(tsd, filename, 'f', VSEQ_INVALID);
	FUNC3(FUNC9(tsd), &prof_dump_filename_mtx);
	FUNC4(tsd, false, filename, opt_prof_leak);
}
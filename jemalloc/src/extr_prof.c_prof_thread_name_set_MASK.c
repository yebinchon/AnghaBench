#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_3__ {char* thread_name; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(tsd_t *tsd, const char *thread_name) {
	FUNC0(FUNC7(tsd) == 0);

	prof_tdata_t *tdata;
	unsigned i;
	char *s;

	tdata = FUNC4(tsd, true);
	if (tdata == NULL) {
		return EAGAIN;
	}

	/* Validate input. */
	if (thread_name == NULL) {
		return EFAULT;
	}
	for (i = 0; thread_name[i] != '\0'; i++) {
		char c = thread_name[i];
		if (!FUNC3(c) && !FUNC2(c)) {
			return EFAULT;
		}
	}

	s = FUNC5(FUNC8(tsd), thread_name);
	if (s == NULL) {
		return EAGAIN;
	}

	if (tdata->thread_name != NULL) {
		FUNC1(FUNC8(tsd), tdata->thread_name, NULL, NULL, true,
		    true);
		tdata->thread_name = NULL;
	}
	if (FUNC6(s) > 0) {
		tdata->thread_name = s;
	}
	return 0;
}
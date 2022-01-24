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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ofname ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(char *data, int len)
{
	FILE *f;
	int ret = EXIT_FAILURE;

	f = FUNC4(ofname, "w");
	if (f == NULL) {
		FUNC1("could not open \"%s\" for writing", ofname);
		goto out;
	}

	errno = 0;
	FUNC5(data, len, 1, f);
	if (errno) {
		FUNC1("unable to write output file");
		goto out_flush;
	}

	FUNC0("firmware file \"%s\" completed", ofname);

	ret = EXIT_SUCCESS;

 out_flush:
	FUNC3(f);
	FUNC2(f);
	if (ret != EXIT_SUCCESS) {
		FUNC6(ofname);
	}
 out:
	return ret;
}
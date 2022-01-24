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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  hashsig_in_progress ;
typedef  int /*<<< orphan*/  git_hashsig_option_t ;
typedef  int /*<<< orphan*/  git_hashsig ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *,int) ; 

int FUNC11(
	git_hashsig **out,
	const char *path,
	git_hashsig_option_t opts)
{
	uint8_t buf[0x1000];
	ssize_t buflen = 0;
	int error = 0, fd;
	hashsig_in_progress prog;
	git_hashsig *sig = FUNC6(opts);
	FUNC0(sig);

	if ((fd = FUNC3(path)) < 0) {
		FUNC1(sig);
		return fd;
	}

	FUNC8(&prog, sig);

	while (!error) {
		if ((buflen = FUNC10(fd, buf, sizeof(buf))) <= 0) {
			if ((error = (int)buflen) < 0)
				FUNC2(GIT_ERROR_OS,
					"read error on '%s' calculating similarity hashes", path);
			break;
		}

		error = FUNC5(sig, buf, buflen, &prog);
	}

	FUNC9(fd);

	if (!error)
		error = FUNC7(sig);

	if (!error)
		*out = sig;
	else
		FUNC4(sig);

	return error;
}
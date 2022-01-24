#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  st_mode; } ;
struct dir_iterator {char* relative_path; char* basename; TYPE_2__ path; TYPE_1__ st; } ;

/* Variables and functions */
 unsigned int DIR_ITERATOR_FOLLOW_SYMLINKS ; 
 unsigned int DIR_ITERATOR_PEDANTIC ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int ITER_DONE ; 
 int ITER_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (struct dir_iterator*) ; 
 struct dir_iterator* FUNC5 (char const*,unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

int FUNC11(int argc, const char **argv)
{
	struct dir_iterator *diter;
	unsigned int flags = 0;
	int iter_status;

	for (++argv, --argc; *argv && FUNC9(*argv, "--"); ++argv, --argc) {
		if (FUNC10(*argv, "--follow-symlinks") == 0)
			flags |= DIR_ITERATOR_FOLLOW_SYMLINKS;
		else if (FUNC10(*argv, "--pedantic") == 0)
			flags |= DIR_ITERATOR_PEDANTIC;
		else
			FUNC3("invalid option '%s'", *argv);
	}

	if (!*argv || argc != 1)
		FUNC3("dir-iterator needs exactly one non-option argument");

	diter = FUNC5(*argv, flags);

	if (!diter) {
		FUNC8("dir_iterator_begin failure: %s\n", FUNC6(errno));
		FUNC7(EXIT_FAILURE);
	}

	while ((iter_status = FUNC4(diter)) == ITER_OK) {
		if (FUNC0(diter->st.st_mode))
			FUNC8("[d] ");
		else if (FUNC2(diter->st.st_mode))
			FUNC8("[f] ");
		else if (FUNC1(diter->st.st_mode))
			FUNC8("[s] ");
		else
			FUNC8("[?] ");

		FUNC8("(%s) [%s] %s\n", diter->relative_path, diter->basename,
		       diter->path.buf);
	}

	if (iter_status != ITER_DONE) {
		FUNC8("dir_iterator_advance failure\n");
		return 1;
	}

	return 0;
}
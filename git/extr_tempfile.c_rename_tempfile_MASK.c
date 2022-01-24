#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct tempfile {TYPE_1__ filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC3 (struct tempfile**) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (struct tempfile*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*) ; 

int FUNC6(struct tempfile **tempfile_p, const char *path)
{
	struct tempfile *tempfile = *tempfile_p;

	if (!FUNC4(tempfile))
		FUNC0("rename_tempfile called for inactive object");

	if (FUNC1(tempfile)) {
		FUNC3(tempfile_p);
		return -1;
	}

	if (FUNC5(tempfile->filename.buf, path)) {
		int save_errno = errno;
		FUNC3(tempfile_p);
		errno = save_errno;
		return -1;
	}

	FUNC2(tempfile);
	*tempfile_p = NULL;
	return 0;
}
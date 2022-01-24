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
struct tempfile {int fd; int /*<<< orphan*/ * fp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tempfile*) ; 

int FUNC4(struct tempfile *tempfile)
{
	int fd;
	FILE *fp;
	int err;

	if (!FUNC3(tempfile) || tempfile->fd < 0)
		return 0;

	fd = tempfile->fd;
	fp = tempfile->fp;
	tempfile->fd = -1;
	if (fp) {
		tempfile->fp = NULL;
		if (FUNC2(fp)) {
			err = -1;
			if (!FUNC1(fp))
				errno = EIO;
		} else {
			err = FUNC1(fp);
		}
	} else {
		err = FUNC0(fd);
	}

	return err ? -1 : 0;
}
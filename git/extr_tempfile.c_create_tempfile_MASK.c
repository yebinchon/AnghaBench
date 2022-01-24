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
struct tempfile {scalar_t__ fd; TYPE_1__ filename; } ;

/* Variables and functions */
 int EINVAL ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (struct tempfile*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC3 (struct tempfile**) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct tempfile* FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 

struct tempfile *FUNC8(const char *path)
{
	struct tempfile *tempfile = FUNC5();

	FUNC7(&tempfile->filename, path);
	tempfile->fd = FUNC6(tempfile->filename.buf,
			    O_RDWR | O_CREAT | O_EXCL | O_CLOEXEC, 0666);
	if (O_CLOEXEC && tempfile->fd < 0 && errno == EINVAL)
		/* Try again w/o O_CLOEXEC: the kernel might not support it */
		tempfile->fd = FUNC6(tempfile->filename.buf,
				    O_RDWR | O_CREAT | O_EXCL, 0666);
	if (tempfile->fd < 0) {
		FUNC2(tempfile);
		return NULL;
	}
	FUNC0(tempfile);
	if (FUNC1(tempfile->filename.buf)) {
		int save_errno = errno;
		FUNC4("cannot fix permission bits on %s", tempfile->filename.buf);
		FUNC3(&tempfile);
		errno = save_errno;
		return NULL;
	}

	return tempfile;
}
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

/* Variables and functions */
#define  COPY_READ_ERROR 129 
#define  COPY_WRITE_ERROR 128 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (char*,...) ; 
 int FUNC4 (char const*,int,...) ; 

int FUNC5(const char *dst, const char *src, int mode)
{
	int fdi, fdo, status;

	mode = (mode & 0111) ? 0777 : 0666;
	if ((fdi = FUNC4(src, O_RDONLY)) < 0)
		return fdi;
	if ((fdo = FUNC4(dst, O_WRONLY | O_CREAT | O_EXCL, mode)) < 0) {
		FUNC1(fdi);
		return fdo;
	}
	status = FUNC2(fdi, fdo);
	switch (status) {
	case COPY_READ_ERROR:
		FUNC3("copy-fd: read returned");
		break;
	case COPY_WRITE_ERROR:
		FUNC3("copy-fd: write returned");
		break;
	}
	FUNC1(fdi);
	if (FUNC1(fdo) != 0)
		return FUNC3("%s: close error", dst);

	if (!status && FUNC0(dst))
		return -1;

	return status;
}
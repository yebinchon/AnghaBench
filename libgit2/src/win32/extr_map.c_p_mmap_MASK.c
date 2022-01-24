#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int git_off_t ;
struct TYPE_4__ {size_t len; int /*<<< orphan*/ * fmh; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ git_map ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EINVAL ; 
 int FILE_MAP_READ ; 
 int FILE_MAP_WRITE ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t,int,int) ; 
 int GIT_PROT_READ ; 
 int GIT_PROT_WRITE ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int,int,size_t) ; 
 int PAGE_READONLY ; 
 int PAGE_READWRITE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

int FUNC8(git_map *out, size_t len, int prot, int flags, int fd, git_off_t offset)
{
	HANDLE fh = (HANDLE)FUNC4(fd);
	DWORD alignment = FUNC6();
	DWORD fmap_prot = 0;
	DWORD view_prot = 0;
	DWORD off_low = 0;
	DWORD off_hi = 0;
	git_off_t page_start;
	git_off_t page_offset;

	FUNC2(out, len, prot, flags);

	out->data = NULL;
	out->len = 0;
	out->fmh = NULL;

	if (fh == INVALID_HANDLE_VALUE) {
		errno = EBADF;
		FUNC7(GIT_ERROR_OS, "failed to mmap. Invalid handle value");
		return -1;
	}

	if (prot & GIT_PROT_WRITE)
		fmap_prot |= PAGE_READWRITE;
	else if (prot & GIT_PROT_READ)
		fmap_prot |= PAGE_READONLY;

	if (prot & GIT_PROT_WRITE)
		view_prot |= FILE_MAP_WRITE;
	if (prot & GIT_PROT_READ)
		view_prot |= FILE_MAP_READ;

	page_start = (offset / alignment) * alignment;
	page_offset = offset - page_start;

	if (page_offset != 0) { /* offset must be multiple of the allocation granularity */
		errno = EINVAL;
		FUNC7(GIT_ERROR_OS, "failed to mmap. Offset must be multiple of allocation granularity");
		return -1;
	}

	out->fmh = FUNC1(fh, NULL, fmap_prot, 0, 0, NULL);
	if (!out->fmh || out->fmh == INVALID_HANDLE_VALUE) {
		FUNC7(GIT_ERROR_OS, "failed to mmap. Invalid handle value");
		out->fmh = NULL;
		return -1;
	}

	FUNC5(sizeof(git_off_t) == 8);

	off_low = (DWORD)(page_start);
	off_hi = (DWORD)(page_start >> 32);
	out->data = FUNC3(out->fmh, view_prot, off_hi, off_low, len);
	if (!out->data) {
		FUNC7(GIT_ERROR_OS, "failed to mmap. No data written");
		FUNC0(out->fmh);
		out->fmh = NULL;
		return -1;
	}
	out->len = len;

	return 0;
}
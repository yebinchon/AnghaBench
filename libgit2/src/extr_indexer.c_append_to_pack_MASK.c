#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t git_off_t ;
struct TYPE_8__ {TYPE_2__* pack; } ;
typedef  TYPE_3__ git_indexer ;
struct TYPE_6__ {size_t size; int fd; } ;
struct TYPE_7__ {TYPE_1__ mwf; int /*<<< orphan*/  pack_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,void const*,int) ; 
 int FUNC4 (TYPE_3__*,void const*,size_t,size_t) ; 

__attribute__((used)) static int FUNC5(git_indexer *idx, const void *data, size_t size)
{
	git_off_t new_size;
	size_t mmap_alignment;
	size_t page_offset;
	git_off_t page_start;
	git_off_t current_size = idx->pack->mwf.size;
	int fd = idx->pack->mwf.fd;
	int error;

	if (!size)
		return 0;

	if ((error = FUNC0(&mmap_alignment)) < 0)
		return error;

	/* Write a single byte to force the file system to allocate space now or
	 * report an error, since we can't report errors when writing using mmap.
	 * Round the size up to the nearest page so that we only need to perform file
	 * I/O when we add a page, instead of whenever we write even a single byte. */
	new_size = current_size + size;
	page_offset = new_size % mmap_alignment;
	page_start = new_size - page_offset;

	if (FUNC2(fd, page_start + mmap_alignment - 1, SEEK_SET) < 0 ||
	    FUNC3(idx->pack->mwf.fd, data, 1) < 0) {
		FUNC1(GIT_ERROR_OS, "cannot extend packfile '%s'", idx->pack->pack_name);
		return -1;
	}

	return FUNC4(idx, data, idx->pack->mwf.size, size);
}
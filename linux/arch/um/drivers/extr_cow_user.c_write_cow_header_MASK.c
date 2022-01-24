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
struct cow_header_v3 {char* backing_file; int /*<<< orphan*/  cow_format; void* alignment; void* sectorsize; int /*<<< orphan*/  size; void* mtime; void* version; void* magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  COW_BITMAP ; 
 int COW_MAGIC ; 
 int COW_VERSION ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (char*,int,char*) ; 
 int FUNC1 (char*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (struct cow_header_v3*) ; 
 struct cow_header_v3* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,struct cow_header_v3*,int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long long) ; 
 int FUNC9 (char*,unsigned long*) ; 
 int FUNC10 (char*) ; 

int FUNC11(char *cow_file, int fd, char *backing_file,
		     int sectorsize, int alignment, unsigned long long *size)
{
	struct cow_header_v3 *header;
	unsigned long modtime;
	int err;

	err = FUNC5(fd, 0);
	if (err < 0) {
		FUNC4("write_cow_header - lseek failed, err = %d\n", -err);
		goto out;
	}

	err = -ENOMEM;
	header = FUNC3(sizeof(*header));
	if (header == NULL) {
		FUNC4("write_cow_header - failed to allocate COW V3 "
			   "header\n");
		goto out;
	}
	header->magic = FUNC7(COW_MAGIC);
	header->version = FUNC7(COW_VERSION);

	err = -EINVAL;
	if (FUNC10(backing_file) > sizeof(header->backing_file) - 1) {
		/* Below, %zd is for a size_t value */
		FUNC4("Backing file name \"%s\" is too long - names are "
			   "limited to %zd characters\n", backing_file,
			   sizeof(header->backing_file) - 1);
		goto out_free;
	}

	if (FUNC0(header->backing_file, sizeof(header->backing_file),
		      backing_file))
		goto out_free;

	err = FUNC9(header->backing_file, &modtime);
	if (err < 0) {
		FUNC4("write_cow_header - backing file '%s' mtime "
			   "request failed, err = %d\n", header->backing_file,
			   -err);
		goto out_free;
	}

	err = FUNC1(header->backing_file, size);
	if (err < 0) {
		FUNC4("write_cow_header - couldn't get size of "
			   "backing file '%s', err = %d\n",
			   header->backing_file, -err);
		goto out_free;
	}

	header->mtime = FUNC7(modtime);
	header->size = FUNC8(*size);
	header->sectorsize = FUNC7(sectorsize);
	header->alignment = FUNC7(alignment);
	header->cow_format = COW_BITMAP;

	err = FUNC6(fd, header, sizeof(*header));
	if (err != sizeof(*header)) {
		FUNC4("write_cow_header - write of header to "
			   "new COW file '%s' failed, err = %d\n", cow_file,
			   -err);
		goto out_free;
	}
	err = 0;
 out_free:
	FUNC2(header);
 out:
	return err;
}
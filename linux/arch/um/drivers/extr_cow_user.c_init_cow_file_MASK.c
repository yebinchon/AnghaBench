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
typedef  int /*<<< orphan*/  zero ;
struct cow_header_v3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COW_VERSION ; 
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long,int,int,int,unsigned long*,int*) ; 
 int FUNC4 (int,char*,int) ; 
 int FUNC5 (char*,int,char*,int,int,unsigned long long*) ; 

int FUNC6(int fd, char *cow_file, char *backing_file, int sectorsize,
		  int alignment, int *bitmap_offset_out,
		  unsigned long *bitmap_len_out, int *data_offset_out)
{
	unsigned long long size, offset;
	char zero = 0;
	int err;

	err = FUNC5(cow_file, fd, backing_file, sectorsize,
			       alignment, &size);
	if (err)
		goto out;

	*bitmap_offset_out = FUNC0(sizeof(struct cow_header_v3), alignment);
	FUNC3(COW_VERSION, size, sectorsize, alignment, *bitmap_offset_out,
		  bitmap_len_out, data_offset_out);

	offset = *data_offset_out + size - sizeof(zero);
	err = FUNC2(fd, offset);
	if (err < 0) {
		FUNC1("cow bitmap lseek failed : err = %d\n", -err);
		goto out;
	}

	/*
	 * does not really matter how much we write it is just to set EOF
	 * this also sets the entire COW bitmap
	 * to zero without having to allocate it
	 */
	err = FUNC4(fd, &zero, sizeof(zero));
	if (err != sizeof(zero)) {
		FUNC1("Write of bitmap to new COW file '%s' failed, "
			   "err = %d\n", cow_file, -err);
		if (err >= 0)
			err = -EINVAL;
		goto out;
	}

	return 0;
 out:
	return err;
}
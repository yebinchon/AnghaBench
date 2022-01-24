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
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_2__ {char* file; } ;
struct ubd {char* file; TYPE_1__ cow; } ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  file_reader ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,unsigned long long*,int*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static inline int FUNC6(struct ubd *ubd_dev, __u64 *size_out)
{
	char *file;
	int fd;
	int err;

	__u32 version;
	__u32 align;
	char *backing_file;
	time_t mtime;
	unsigned long long size;
	int sector_size;
	int bitmap_offset;

	if (ubd_dev->file && ubd_dev->cow.file) {
		file = ubd_dev->cow.file;

		goto out;
	}

	fd = FUNC4(ubd_dev->file, FUNC1(FUNC0()), 0);
	if (fd < 0)
		return fd;

	err = FUNC5(file_reader, &fd, &version, &backing_file, \
		&mtime, &size, &sector_size, &align, &bitmap_offset);
	FUNC2(fd);

	if(err == -EINVAL)
		file = ubd_dev->file;
	else
		file = backing_file;

out:
	return FUNC3(file, size_out);
}
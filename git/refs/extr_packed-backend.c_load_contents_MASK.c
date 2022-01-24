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
struct stat {int /*<<< orphan*/  st_size; } ;
struct snapshot {int mmapped; int /*<<< orphan*/  buf; scalar_t__ eof; int /*<<< orphan*/  start; TYPE_1__* refs; int /*<<< orphan*/  validity; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 scalar_t__ MMAP_NONE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 size_t SMALL_FILE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 scalar_t__ mmap_strategy ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snapshot *snapshot)
{
	int fd;
	struct stat st;
	size_t size;
	ssize_t bytes_read;

	fd = FUNC3(snapshot->refs->path, O_RDONLY);
	if (fd < 0) {
		if (errno == ENOENT) {
			/*
			 * This is OK; it just means that no
			 * "packed-refs" file has been written yet,
			 * which is equivalent to it being empty,
			 * which is its state when initialized with
			 * zeros.
			 */
			return 0;
		} else {
			FUNC1("couldn't read %s", snapshot->refs->path);
		}
	}

	FUNC5(&snapshot->validity, fd);

	if (FUNC2(fd, &st) < 0)
		FUNC1("couldn't stat %s", snapshot->refs->path);
	size = FUNC8(st.st_size);

	if (!size) {
		FUNC0(fd);
		return 0;
	} else if (mmap_strategy == MMAP_NONE || size <= SMALL_FILE_SIZE) {
		snapshot->buf = FUNC6(size);
		bytes_read = FUNC4(fd, snapshot->buf, size);
		if (bytes_read < 0 || bytes_read != size)
			FUNC1("couldn't read %s", snapshot->refs->path);
		snapshot->mmapped = 0;
	} else {
		snapshot->buf = FUNC7(NULL, size, PROT_READ, MAP_PRIVATE, fd, 0);
		snapshot->mmapped = 1;
	}
	FUNC0(fd);

	snapshot->start = snapshot->buf;
	snapshot->eof = snapshot->buf + size;

	return 1;
}
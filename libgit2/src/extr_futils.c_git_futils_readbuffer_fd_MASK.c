#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  git_file ;
struct TYPE_6__ {char* ptr; size_t size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 

int FUNC7(git_buf *buf, git_file fd, size_t len)
{
	ssize_t read_size = 0;
	size_t alloc_len;

	FUNC2(buf);

	if (!FUNC1(len)) {
		FUNC5(GIT_ERROR_INVALID, "read too large");
		return -1;
	}

	FUNC0(&alloc_len, len, 1);
	if (FUNC4(buf, alloc_len) < 0)
		return -1;

	/* p_read loops internally to read len bytes */
	read_size = FUNC6(fd, buf->ptr, len);

	if (read_size != (ssize_t)len) {
		FUNC5(GIT_ERROR_OS, "failed to read descriptor");
		FUNC3(buf);
		return -1;
	}

	buf->ptr[read_size] = '\0';
	buf->size = read_size;

	return 0;
}
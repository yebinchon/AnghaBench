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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PACKET_READ_GENTLE_ON_EOF ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,size_t) ; 
 size_t FUNC5 (int,void*,unsigned int) ; 

__attribute__((used)) static int FUNC6(int fd, char **src_buf, size_t *src_size,
			   void *dst, unsigned size, int options)
{
	ssize_t ret;

	if (fd >= 0 && src_buf && *src_buf)
		FUNC0("multiple sources given to packet_read");

	/* Read up to "size" bytes from our source, whatever it is. */
	if (src_buf && *src_buf) {
		ret = size < *src_size ? size : *src_size;
		FUNC4(dst, *src_buf, ret);
		*src_buf += ret;
		*src_size -= ret;
	} else {
		ret = FUNC5(fd, dst, size);
		if (ret < 0)
			FUNC3(FUNC1("read error"));
	}

	/* And complain if we didn't get enough bytes to satisfy the read. */
	if (ret != size) {
		if (options & PACKET_READ_GENTLE_ON_EOF)
			return -1;

		FUNC2(FUNC1("the remote end hung up unexpectedly"));
	}

	return ret;
}
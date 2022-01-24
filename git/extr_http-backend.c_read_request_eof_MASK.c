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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 size_t max_request_buffer ; 
 scalar_t__ FUNC4 (int,unsigned char*,size_t) ; 
 unsigned char* FUNC5 (size_t) ; 

__attribute__((used)) static ssize_t FUNC6(int fd, unsigned char **out)
{
	size_t len = 0, alloc = 8192;
	unsigned char *buf = FUNC5(alloc);

	if (max_request_buffer < alloc)
		max_request_buffer = alloc;

	while (1) {
		ssize_t cnt;

		cnt = FUNC4(fd, buf + len, alloc - len);
		if (cnt < 0) {
			FUNC3(buf);
			return -1;
		}

		/* partial read from read_in_full means we hit EOF */
		len += cnt;
		if (len < alloc) {
			*out = buf;
			return len;
		}

		/* otherwise, grow and try again (if we can) */
		if (alloc == max_request_buffer)
			FUNC2("request was larger than our maximum size (%lu);"
			    " try setting GIT_HTTP_MAX_REQUEST_BUFFER",
			    max_request_buffer);

		alloc = FUNC1(alloc);
		if (alloc > max_request_buffer)
			alloc = max_request_buffer;
		FUNC0(buf, alloc);
	}
}
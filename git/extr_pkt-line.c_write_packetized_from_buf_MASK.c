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
 size_t LARGE_PACKET_DATA_MAX ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,char const*,size_t) ; 

int FUNC2(const char *src_in, size_t len, int fd_out)
{
	int err = 0;
	size_t bytes_written = 0;
	size_t bytes_to_write;

	while (!err) {
		if ((len - bytes_written) > LARGE_PACKET_DATA_MAX)
			bytes_to_write = LARGE_PACKET_DATA_MAX;
		else
			bytes_to_write = len - bytes_written;
		if (bytes_to_write == 0)
			break;
		err = FUNC1(fd_out, src_in + bytes_written, bytes_to_write);
		bytes_written += bytes_to_write;
	}
	if (!err)
		err = FUNC0(fd_out);
	return err;
}
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
struct tty_chan {char* dev; int /*<<< orphan*/  tt; scalar_t__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int errno ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(int input, int output, int primary, void *d,
		    char **dev_out)
{
	struct tty_chan *data = d;
	int fd, err, mode = 0;

	if (input && output)
		mode = O_RDWR;
	else if (input)
		mode = O_RDONLY;
	else if (output)
		mode = O_WRONLY;

	fd = FUNC1(data->dev, mode);
	if (fd < 0)
		return -errno;

	if (data->raw) {
		FUNC0(err = FUNC3(fd, &data->tt));
		if (err)
			return err;

		err = FUNC2(fd);
		if (err)
			return err;
	}

	*dev_out = data->dev;
	return fd;
}
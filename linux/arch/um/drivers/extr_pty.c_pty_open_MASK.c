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
struct pty_chan {char* dev_name; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* announce ) (char*,int /*<<< orphan*/ ) ;scalar_t__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int input, int output, int primary, void *d,
		    char **dev_out)
{
	struct pty_chan *data = d;
	int fd, err;
	char dev[sizeof("/dev/ptyxx\0")] = "/dev/ptyxx";

	fd = FUNC1(dev);
	if (fd < 0)
		return fd;

	if (data->raw) {
		err = FUNC2(fd);
		if (err) {
			FUNC0(fd);
			return err;
		}
	}

	if (data->announce)
		(*data->announce)(dev, data->dev);

	FUNC3(data->dev_name, "%s", dev);
	*dev_out = data->dev_name;

	return fd;
}
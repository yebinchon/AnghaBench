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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,char const*) ; 

__attribute__((used)) static char *FUNC6(const char *dev, const char *attr)
{
	int fd, len = 0;
	char path[PATH_MAX];
	static char buf[129];

	FUNC2(buf, 0, sizeof(buf));
	FUNC5(path, sizeof(path) - 1, "/sys/bus/usb/devices/%s/%s", dev, attr);

	if ((fd = FUNC3(path, O_RDONLY)) >= 0)
	{
		len = FUNC4(fd, buf, sizeof(buf) - 1);
		FUNC0(fd);
	}

	while (--len > 0 && FUNC1(buf[len]))
		buf[len] = 0;

	return (len >= 0) ? buf : NULL;
}
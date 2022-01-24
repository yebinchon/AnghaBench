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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 

int FUNC5(const char *name)
{
	char buf[32];
	int fd, pos;

	FUNC4(buf, sizeof(buf), "/sys/class/ieee80211/%s/index", name);

	fd = FUNC2(buf, O_RDONLY);
	if (fd < 0)
		return -1;
	pos = FUNC3(fd, buf, sizeof(buf) - 1);
	if (pos < 0) {
		FUNC1(fd);
		return -1;
	}
	buf[pos] = '\0';
	FUNC1(fd);
	return FUNC0(buf);
}
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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,void*,int) ; 

__attribute__((used)) static void
FUNC5(void *ptr, int len)
{
	int fd;

	fd = FUNC2("/dev/urandom", O_RDONLY);
	if (fd < 0) {
		FUNC3("open");
		FUNC1(1);
	}
	FUNC4(fd, ptr, len);
	FUNC0(fd);
}
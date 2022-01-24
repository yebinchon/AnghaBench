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
 int ADD_ENTROPY ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC5(const char *fname)
{
	unsigned char buf[ADD_ENTROPY];
	int fd;
	size_t n;

	fd = FUNC3(fname, O_RDONLY, 0);
	if (fd<0)
		return -1;
	n = FUNC4(fd, buf, sizeof(buf));
	FUNC1(fd);
	if (n != sizeof(buf))
		return -1;
	FUNC0(buf, sizeof(buf));
	FUNC2(buf, sizeof(buf));
	return 0;
}
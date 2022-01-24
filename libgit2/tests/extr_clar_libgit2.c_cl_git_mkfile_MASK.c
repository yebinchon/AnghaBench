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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char const*,int) ; 
 int FUNC5 (char const*) ; 

void FUNC6(const char *filename, const char *content)
{
	int fd;

	fd = FUNC3(filename, 0666);
	FUNC0(fd != -1);

	if (content) {
		FUNC1(FUNC4(fd, content, FUNC5(content)));
	} else {
		FUNC1(FUNC4(fd, filename, FUNC5(filename)));
		FUNC1(FUNC4(fd, "\n", 1));
	}

	FUNC1(FUNC2(fd));
}
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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC6(int file, off_t offset, off_t len, char *name)
{
	char *tmp;
	int count;
	off_t off;
	if ((off = FUNC2(file, offset, SEEK_SET)) < 0) {
		FUNC1(stderr, "%s: fseek: %s\n", name, FUNC5(errno));
		FUNC0(1);
	}
	if (!(tmp = (char *) FUNC3(len))) {
		FUNC1(stderr, "%s: Can't allocate %d bytes.\n", name,
			len);
		FUNC0(1);
	}
	count = FUNC4(file, tmp, len);
	if (count != len) {
		FUNC1(stderr, "%s: read: %s.\n",
			name,
			count ? FUNC5(errno) : "End of file reached");
		FUNC0(1);
	}
	return tmp;
}
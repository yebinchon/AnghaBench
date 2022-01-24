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
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int erasesize ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int FUNC5 (char const*) ; 
 int mtdsize ; 
 int quiet ; 
 int FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 

__attribute__((used)) static int
FUNC8(const char *mtd, int part_offset, int size)
{
	int ret = 0, offset = 0;
	int fd;
	char *buf;

	if (quiet < 2)
		FUNC1(stderr, "Dumping %s ...\n", mtd);

	fd = FUNC5(mtd);
	if(fd < 0) {
		FUNC1(stderr, "Could not open mtd device: %s\n", mtd);
		return -1;
	}

	if (!size)
		size = mtdsize;

	if (part_offset)
		FUNC2(fd, part_offset, SEEK_SET);

	buf = FUNC3(erasesize);
	if (!buf)
		return -1;

	do {
		int len = (size > erasesize) ? (erasesize) : (size);
		int rlen = FUNC6(fd, buf, len);

		if (rlen < 0) {
			if (errno == EINTR)
				continue;
			ret = -1;
			goto out;
		}
		if (!rlen || rlen != len)
			break;
		if (FUNC4(fd, offset)) {
			FUNC1(stderr, "skipping bad block at 0x%08x\n", offset);
		} else {
			size -= rlen;
			FUNC7(1, buf, rlen);
		}
		offset += rlen;
	} while (size > 0);

out:
	FUNC0(fd);
	return ret;
}
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
struct mtd_info_user {int /*<<< orphan*/  type; int /*<<< orphan*/  erasesize; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMGETINFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  erasesize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct mtd_info_user*) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  mtdsize ; 
 int /*<<< orphan*/  mtdtype ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(const char *mtd)
{
	struct mtd_info_user mtdInfo;
	int fd;

	fd = FUNC3(mtd, false);
	if(fd < 0) {
		FUNC1(stderr, "Could not open mtd device: %s\n", mtd);
		return -1;
	}

	if(FUNC2(fd, MEMGETINFO, &mtdInfo)) {
		FUNC1(stderr, "Could not get MTD device info from %s\n", mtd);
		FUNC0(fd);
		return -1;
	}
	mtdsize = mtdInfo.size;
	erasesize = mtdInfo.erasesize;
	mtdtype = mtdInfo.type;

	return fd;
}
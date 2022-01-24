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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  dev ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int S_IFBLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*,char*,int*,int*) ; 
 int FUNC6 (char*,struct stat*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

char *FUNC10(const char *name, int *erase_size)
{
	FILE *f;
	int mtd_num;
	char dev[PATH_MAX];
	char *ret = NULL;
	struct stat s;
	int err;

	f = FUNC2("/proc/mtd", "r");
	if (!f)
		return NULL;

	while (1) {
		char *p;
		p = FUNC1(dev, sizeof(dev), f);
		if (!p)
			break;

		if (!FUNC9(dev, name))
			continue;

		err = FUNC5(dev, "mtd%d: %08x", &mtd_num, erase_size);
		if (err != 2)
			break;

		FUNC4(dev, "/dev/mtdblock%d", mtd_num);
		err = FUNC6(dev, &s);
		if (err < 0)
			break;

		if ((s.st_mode & S_IFBLK) == 0)
			break;

		ret = FUNC3(FUNC7(dev) + 1);
		if (ret == NULL)
			break;

		FUNC8(ret, dev, FUNC7(dev) + 1);
		break;
	}

	FUNC0(f);
	return ret;
}
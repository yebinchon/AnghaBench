#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; int /*<<< orphan*/  needle; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int CPUINFO_BUFSIZE ; 
 int RBCFG_SOC_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 TYPE_1__* rbcfg_socs ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
	FILE *fp;
	char temp[CPUINFO_BUFSIZE];
	char *haystack, *needle;
	int i, found = 0, soc_type = RBCFG_SOC_UNKNOWN;

	fp = FUNC3("/proc/cpuinfo", "r");
	if (!fp)
		goto end;

	/* first, extract the system type line */
	needle = "system type";
	while(FUNC2(temp, CPUINFO_BUFSIZE, fp)) {
		if (!FUNC6(temp, needle, FUNC5(needle))) {
			found = 1;
			break;
		}
	}

	FUNC1(fp);

	/* failsafe in case cpuinfo format changes */
	if (!found)
		goto end;

	/* skip the field header */
	haystack = FUNC4(temp, ':');

	/* then, try to identify known SoC, stop at first match */
	for (i = 0; i < FUNC0(rbcfg_socs); i++) {
		if ((FUNC7(haystack, rbcfg_socs[i].needle))) {
			soc_type = rbcfg_socs[i].type;
			break;
		}
	}

end:
	return soc_type;
}
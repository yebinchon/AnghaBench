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
struct sa_open_data {int dummy; } ;
typedef  int /*<<< orphan*/  lbuf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sa_open_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sa_open_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_open_data*,char*,int /*<<< orphan*/ ) ; 
 struct sa_open_data* FUNC4 () ; 
 int /*<<< orphan*/  stdin ; 
 size_t FUNC5 (char*) ; 

int FUNC6(int argc, char *argv[])
{
	struct sa_open_data *od;
	char lbuf[128];

	od = FUNC4();

	while (FUNC0(lbuf, sizeof(lbuf), stdin)) {
		size_t llen = FUNC5(lbuf);
		if (llen > 0 && lbuf[llen - 1] == '\n')
			lbuf[--llen] = '\0';
		if (llen > 0 && lbuf[llen - 1] == '\r')
			lbuf[--llen] = '\0';
		if (llen == 0)
			continue;
		FUNC3(od, lbuf, 0);
	}

	FUNC2(od);

	FUNC1(od);

	return 0;
}
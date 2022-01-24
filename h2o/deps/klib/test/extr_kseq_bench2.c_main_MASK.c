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
struct TYPE_3__ {scalar_t__ s; scalar_t__ m; scalar_t__ l; } ;
typedef  TYPE_1__ kstring_t ;
typedef  int /*<<< orphan*/  kstream_t ;
typedef  scalar_t__ clock_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_SIZE ; 
 float CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char,TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC12(int argc, char *argv[])
{
	clock_t t;
	if (argc == 1) {
		FUNC5(stderr, "Usage: %s <in.txt>\n", argv[0]);
		return 1;
	}
	{
		FILE *fp;
		char *s;
		t = FUNC0();
		s = FUNC10(BUF_SIZE);
		fp = FUNC4(argv[1], "r");
		while (FUNC3(s, BUF_SIZE, fp));
		FUNC2(fp);
		FUNC5(stderr, "[fgets] %.2f sec\n", (float)(FUNC0() - t) / CLOCKS_PER_SEC);
	}
	{
		int fd, dret;
		kstream_t *ks;
		kstring_t s;
		t = FUNC0();
		s.l = s.m = 0; s.s = 0;
		fd = FUNC11(argv[1], O_RDONLY);
		ks = FUNC9(fd);
		while (FUNC8(ks, '\n', &s, &dret) >= 0);
		FUNC6(s.s);
		FUNC7(ks);
		FUNC1(fd);
		FUNC5(stderr, "[kstream] %.2f sec\n", (float)(FUNC0() - t) / CLOCKS_PER_SEC);
	}
	return 0;
}
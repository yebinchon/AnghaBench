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
typedef  int /*<<< orphan*/  sub ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_MKDIR_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,int) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(const char *root, int dirs, int subs)
{
	int i, j;
	char buf[64], sub[80];

	for (i = 0; i < dirs; ++i) {
		if (i % 2 == 0) {
			FUNC4(buf, sizeof(buf), "%s/dir%02d", root, i);
			FUNC1(FUNC2(buf, 0775, GIT_MKDIR_PATH));

			FUNC4(buf, sizeof(buf), "%s/dir%02d/file", root, i);
			FUNC0(buf, buf);
			buf[FUNC5(buf) - 5] = '\0';
		} else {
			FUNC4(buf, sizeof(buf), "%s/DIR%02d", root, i);
			FUNC1(FUNC2(buf, 0775, GIT_MKDIR_PATH));
		}

		for (j = 0; j < subs; ++j) {
			switch (j % 4) {
			case 0: FUNC4(sub, sizeof(sub), "%s/sub%02d", buf, j); break;
			case 1: FUNC4(sub, sizeof(sub), "%s/sUB%02d", buf, j); break;
			case 2: FUNC4(sub, sizeof(sub), "%s/Sub%02d", buf, j); break;
			case 3: FUNC4(sub, sizeof(sub), "%s/SUB%02d", buf, j); break;
			}
			FUNC1(FUNC2(sub, 0775, GIT_MKDIR_PATH));

			if (j % 2 == 0) {
				size_t sublen = FUNC5(sub);
				FUNC3(&sub[sublen], "/file", sizeof("/file"));
				FUNC0(sub, sub);
				sub[sublen] = '\0';
			}
		}
	}
}
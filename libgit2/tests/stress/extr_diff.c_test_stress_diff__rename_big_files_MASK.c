#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(void)
{
	git_index *index;
	char tmp[64];
	int i, j;
	git_buf b = GIT_BUF_INIT;

	g_repo = FUNC2("renames");

	FUNC1(FUNC7(&index, g_repo));

	for (i = 0; i < 100; i += 1) {
		FUNC8(tmp, sizeof(tmp), "renames/newfile%03d", i);
		for (j = i * 256; j > 0; --j)
			FUNC4(&b, "more content %d\n", i);
		FUNC0(tmp, b.ptr);
	}

	for (i = 0; i < 100; i += 1) {
		FUNC8(tmp, sizeof(tmp), "renames/newfile%03d", i);
		FUNC1(FUNC5(index, tmp + FUNC9("renames/")));
	}

	FUNC3(&b);
	FUNC6(index);

	FUNC10(100);
}
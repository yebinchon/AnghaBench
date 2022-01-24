#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int value; char smaller_value; } ;
typedef  TYPE_1__ sortedcache_test_struct ;
typedef  int /*<<< orphan*/  git_sortedcache ;
struct TYPE_7__ {char* ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (void**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(git_sortedcache *sc)
{
	int count = 0;
	git_buf buf = GIT_BUF_INIT;
	char *scan, *after;
	sortedcache_test_struct *item;

	FUNC0(FUNC5(sc, &buf) > 0);

	FUNC4(sc, false); /* clear once we already have lock */

	for (scan = buf.ptr; *scan; scan = after + 1) {
		int val = FUNC8(scan, &after, 0);
		FUNC0(after > scan);
		scan = after;

		for (scan = after; FUNC2(*scan); ++scan) /* find start */;
		for (after = scan; *after && *after != '\n'; ++after) /* find eol */;
		*after = '\0';

		FUNC1(FUNC6((void **)&item, sc, scan));

		item->value = val;
		item->smaller_value = (char)(count++);
	}

	FUNC7(sc);

	FUNC3(&buf);
}
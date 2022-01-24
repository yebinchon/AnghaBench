#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  message; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  cleanup_repository ; 
 int /*<<< orphan*/  g_repo ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_noop ; 

void FUNC9(void)
{
	FUNC4(&cleanup_repository, "./test1");
	FUNC2(FUNC8(&g_repo, "./test1", 0));

	FUNC3("./test1/.git/FETCH_HEAD", "49322bb17d3acc9146f98c97d078513228bbf3c0\tinvalid-merge\t\n");
	FUNC1(FUNC7(g_repo, read_noop, NULL));

	FUNC0(FUNC5(FUNC6()->message, "invalid for-merge") == 0);
}
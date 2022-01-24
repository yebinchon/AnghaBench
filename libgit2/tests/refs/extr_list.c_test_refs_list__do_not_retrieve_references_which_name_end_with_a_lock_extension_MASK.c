#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ count; } ;
typedef  TYPE_1__ git_strarray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(void)
{
	git_strarray ref_list;

	/* Create a fake locked reference */
	FUNC1(
		"./testrepo/.git/refs/heads/hanwen.lock",
		"144344043ba4d4a405da03de3844aa829ae8be0e\n");

	FUNC2(FUNC3(&ref_list, g_repo));
	FUNC0((int)ref_list.count, 18);

	FUNC4(&ref_list);
}
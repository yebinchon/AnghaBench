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

/* Variables and functions */
 int /*<<< orphan*/  GIT_EPEEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_obj ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

void FUNC4(void)
{
	FUNC0("wrapped_tag^{trip}");
	FUNC3("point_to_blob^{commit}", NULL);
	FUNC1(
		GIT_EPEEL, FUNC2(&g_obj, g_repo, "wrapped_tag^{blob}"));

	FUNC3("wrapped_tag^{commit}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
	FUNC3("wrapped_tag^{tree}", "944c0f6e4dfa41595e6eb3ceecdb14f50fe18162");
	FUNC3("point_to_blob^{blob}", "1385f264afb75a56a5bec74243be9b367ba4ca08");
	FUNC3("master^{commit}^{commit}", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
}
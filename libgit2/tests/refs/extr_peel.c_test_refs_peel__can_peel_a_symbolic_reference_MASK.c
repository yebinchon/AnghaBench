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
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	FUNC0("HEAD", GIT_OBJECT_COMMIT,
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750", GIT_OBJECT_COMMIT);
	FUNC0("HEAD", GIT_OBJECT_TREE,
		"944c0f6e4dfa41595e6eb3ceecdb14f50fe18162", GIT_OBJECT_TREE);
}
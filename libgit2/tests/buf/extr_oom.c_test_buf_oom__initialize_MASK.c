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
struct TYPE_5__ {int /*<<< orphan*/  grealloc; int /*<<< orphan*/  gmalloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OPT_SET_ALLOCATOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__ oom_alloc ; 
 int /*<<< orphan*/  oom_malloc ; 
 int /*<<< orphan*/  oom_realloc ; 
 TYPE_1__ std_alloc ; 

void FUNC3(void)
{
	FUNC2(&std_alloc);
	FUNC2(&oom_alloc);

	oom_alloc.gmalloc = oom_malloc;
	oom_alloc.grealloc = oom_realloc;

	FUNC0(FUNC1(GIT_OPT_SET_ALLOCATOR, &oom_alloc));
}
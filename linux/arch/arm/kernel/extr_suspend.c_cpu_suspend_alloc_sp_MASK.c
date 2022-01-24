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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  save_ptr_stash_phys; void* save_ptr_stash; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ sleep_save_sp ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(void)
{
	void *ctx_ptr;
	/* ctx_ptr is an array of physical addresses */
	ctx_ptr = FUNC1(FUNC2(), sizeof(u32), GFP_KERNEL);

	if (FUNC0(!ctx_ptr))
		return -ENOMEM;
	sleep_save_sp.save_ptr_stash = ctx_ptr;
	sleep_save_sp.save_ptr_stash_phys = FUNC4(ctx_ptr);
	FUNC3(&sleep_save_sp);
	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct gs_cb {int dummy; } ;
struct TYPE_3__ {struct gs_cb* gs_cb; struct gs_cb* gs_bc_cb; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_GUARDED_STORAGE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct gs_cb*) ; 
 int /*<<< orphan*/  FUNC3 (struct gs_cb*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct pt_regs *regs)
{
	struct gs_cb *gs_cb;

	FUNC4();
	FUNC1(TIF_GUARDED_STORAGE);
	gs_cb = current->thread.gs_bc_cb;
	if (gs_cb) {
		FUNC2(current->thread.gs_cb);
		current->thread.gs_bc_cb = NULL;
		FUNC0(2, 4);
		FUNC3(gs_cb);
		current->thread.gs_cb = gs_cb;
	}
	FUNC5();
}
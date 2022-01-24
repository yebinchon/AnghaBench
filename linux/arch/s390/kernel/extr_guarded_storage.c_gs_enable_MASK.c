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
struct gs_cb {int gsd; } ;
struct TYPE_3__ {struct gs_cb* gs_cb; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 TYPE_2__* current ; 
 struct gs_cb* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gs_cb*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(void)
{
	struct gs_cb *gs_cb;

	if (!current->thread.gs_cb) {
		gs_cb = FUNC1(sizeof(*gs_cb), GFP_KERNEL);
		if (!gs_cb)
			return -ENOMEM;
		gs_cb->gsd = 25;
		FUNC3();
		FUNC0(2, 4);
		FUNC2(gs_cb);
		current->thread.gs_cb = gs_cb;
		FUNC4();
	}
	return 0;
}
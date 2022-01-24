#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pd_block ; 
 int /*<<< orphan*/ * pd_buf ; 
 scalar_t__ pd_count ; 
 int /*<<< orphan*/  pd_lock ; 
 TYPE_1__* pd_req ; 
 int /*<<< orphan*/  pd_run ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(void)
{
	unsigned long saved_flags;

	pd_count--;
	pd_run--;
	pd_buf += 512;
	pd_block++;
	if (!pd_run)
		return 1;
	if (pd_count)
		return 0;
	FUNC5(&pd_lock, saved_flags);
	if (!FUNC4(pd_req, 0, FUNC2(pd_req))) {
		FUNC0(pd_req, 0);
		pd_req = NULL;
		pd_count = 0;
		pd_buf = NULL;
	} else {
		pd_count = FUNC3(pd_req);
		pd_buf = FUNC1(pd_req->bio);
	}
	FUNC6(&pd_lock, saved_flags);
	return !pd_count;
}
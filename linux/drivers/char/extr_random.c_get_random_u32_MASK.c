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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct batched_entropy {int position; int /*<<< orphan*/  batch_lock; int /*<<< orphan*/ * entropy_u32; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batched_entropy_u32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct batched_entropy* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 

u32 FUNC7(void)
{
	u32 ret;
	unsigned long flags;
	struct batched_entropy *batch;
	static void *previous;

	if (FUNC1(&ret))
		return ret;

	FUNC6(&previous);

	batch = FUNC3(&batched_entropy_u32);
	FUNC4(&batch->batch_lock, flags);
	if (batch->position % FUNC0(batch->entropy_u32) == 0) {
		FUNC2((u8 *)batch->entropy_u32);
		batch->position = 0;
	}
	ret = batch->entropy_u32[batch->position++];
	FUNC5(&batch->batch_lock, flags);
	return ret;
}
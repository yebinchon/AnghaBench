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
typedef  scalar_t__ u64 ;
struct batched_entropy {int position; int /*<<< orphan*/  batch_lock; scalar_t__* entropy_u64; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (unsigned long*) ; 
 int /*<<< orphan*/  batched_entropy_u64 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct batched_entropy* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 

u64 FUNC7(void)
{
	u64 ret;
	unsigned long flags;
	struct batched_entropy *batch;
	static void *previous;

#if BITS_PER_LONG == 64
	if (arch_get_random_long((unsigned long *)&ret))
		return ret;
#else
	if (FUNC1((unsigned long *)&ret) &&
	    FUNC1((unsigned long *)&ret + 1))
	    return ret;
#endif

	FUNC6(&previous);

	batch = FUNC3(&batched_entropy_u64);
	FUNC4(&batch->batch_lock, flags);
	if (batch->position % FUNC0(batch->entropy_u64) == 0) {
		FUNC2((u8 *)batch->entropy_u64);
		batch->position = 0;
	}
	ret = batch->entropy_u64[batch->position++];
	FUNC5(&batch->batch_lock, flags);
	return ret;
}
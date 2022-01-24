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
struct binder_buffer {int dummy; } ;
struct binder_alloc {int dummy; } ;

/* Variables and functions */
 int BUFFER_NUM ; 
 int /*<<< orphan*/  binder_alloc_lru ; 
 int /*<<< orphan*/  FUNC0 (struct binder_alloc*,struct binder_buffer**,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct binder_alloc*,struct binder_buffer**,size_t*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct binder_alloc*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct binder_alloc *alloc,
				       size_t *sizes, int *seq, size_t end)
{
	struct binder_buffer *buffers[BUFFER_NUM];

	FUNC0(alloc, buffers, sizes, seq);
	FUNC1(alloc, buffers, sizes, seq, end);

	/* Allocate from lru. */
	FUNC0(alloc, buffers, sizes, seq);
	if (FUNC3(&binder_alloc_lru))
		FUNC4("lru list should be empty but is not\n");

	FUNC1(alloc, buffers, sizes, seq, end);
	FUNC2(alloc);
}
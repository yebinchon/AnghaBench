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
struct binder_alloc {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int BUFFER_MIN_SIZE ; 
 int BUFFER_NUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int LOOP_END ; 
 int PAGE_SIZE ; 
 int SAME_PAGE_UNALIGNED ; 
 int /*<<< orphan*/  FUNC2 (struct binder_alloc*,size_t*) ; 

__attribute__((used)) static void FUNC3(struct binder_alloc *alloc,
					 size_t *end_offset, int index)
{
	int align;
	size_t end, prev;

	if (index == BUFFER_NUM) {
		FUNC2(alloc, end_offset);
		return;
	}
	prev = index == 0 ? 0 : end_offset[index - 1];
	end = prev;

	FUNC1(BUFFER_MIN_SIZE * BUFFER_NUM >= PAGE_SIZE);

	for (align = SAME_PAGE_UNALIGNED; align < LOOP_END; align++) {
		if (align % 2)
			end = FUNC0(end, PAGE_SIZE);
		else
			end += BUFFER_MIN_SIZE;
		end_offset[index] = end;
		FUNC3(alloc, end_offset, index + 1);
	}
}
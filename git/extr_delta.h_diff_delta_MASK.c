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
struct delta_index {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct delta_index*,void const*,unsigned long,unsigned long*,unsigned long) ; 
 struct delta_index* FUNC1 (void const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct delta_index*) ; 

__attribute__((used)) static inline void *
FUNC3(const void *src_buf, unsigned long src_bufsize,
	   const void *trg_buf, unsigned long trg_bufsize,
	   unsigned long *delta_size, unsigned long max_delta_size)
{
	struct delta_index *index = FUNC1(src_buf, src_bufsize);
	if (index) {
		void *delta = FUNC0(index, trg_buf, trg_bufsize,
					   delta_size, max_delta_size);
		FUNC2(index);
		return delta;
	}
	return NULL;
}
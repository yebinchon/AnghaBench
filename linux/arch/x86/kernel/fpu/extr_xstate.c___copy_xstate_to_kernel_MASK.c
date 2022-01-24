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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void const*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static inline void
FUNC2(void *kbuf, const void *data,
			unsigned int offset, unsigned int size, unsigned int size_total)
{
	if (offset < size_total) {
		unsigned int copy = FUNC1(size, size_total - offset);

		FUNC0(kbuf + offset, data, copy);
	}
}
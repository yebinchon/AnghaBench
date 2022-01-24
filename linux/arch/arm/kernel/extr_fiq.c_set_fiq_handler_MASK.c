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
 unsigned int FIQ_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,unsigned int) ; 
 void* vectors_page ; 

void FUNC3(void *start, unsigned int length)
{
	void *base = vectors_page;
	unsigned offset = FIQ_OFFSET;

	FUNC2(base + offset, start, length);
	if (!FUNC0())
		FUNC1((unsigned long)base + offset, offset +
				   length);
	FUNC1(0xffff0000 + offset, 0xffff0000 + offset + length);
}
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
struct fregs_state {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 scalar_t__ FUNC1 () ; 
 unsigned long FUNC2 () ; 

unsigned long
FUNC3(unsigned long sp, int ia32_frame,
		     unsigned long *buf_fx, unsigned long *size)
{
	unsigned long frame_size = FUNC2();

	*buf_fx = sp = FUNC0(sp - frame_size, 64);
	if (ia32_frame && FUNC1()) {
		frame_size += sizeof(struct fregs_state);
		sp -= sizeof(struct fregs_state);
	}

	*size = frame_size;

	return sp;
}
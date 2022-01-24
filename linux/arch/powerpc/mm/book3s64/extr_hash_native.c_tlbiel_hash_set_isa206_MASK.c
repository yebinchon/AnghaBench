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
 unsigned int FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(unsigned int set, unsigned int is)
{
	unsigned long rb;

	rb = (set << FUNC0(51)) | (is << FUNC0(53));

	asm volatile("tlbiel %0" : : "r" (rb));
}
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
 int /*<<< orphan*/  Index_Invalidate_I ; 
 unsigned long KSEG0 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ void FUNC1(unsigned long size, unsigned long lsize)
{
	unsigned long start = KSEG0;
	unsigned long end = (start + size);

	while(start < end) {
		FUNC0(start,Index_Invalidate_I);
		start += lsize;
	}
}
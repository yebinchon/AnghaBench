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
 int BITS_PER_LONG ; 
 int TIMER_IRQ ; 
 int FUNC0 (unsigned long) ; 

__attribute__((used)) static inline int FUNC1(unsigned long eirr)
{
	int bit = FUNC0(eirr);
	return (BITS_PER_LONG - bit) + TIMER_IRQ;
}
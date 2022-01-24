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
 int /*<<< orphan*/  FUNC0 (int) ; 

void	FUNC1(unsigned int led)
{
	volatile int i,j;
	for(i = 0; i < 5; i++) {
		FUNC0((1 << led)&0x7);
		for(j= 0; j < 200000; j++);
		FUNC0(0);
		for(j= 0; j < 200000; j++);
	}		
}
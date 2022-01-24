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
 int HZ ; 
 unsigned char gayle_reset ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 

void FUNC1(void)
{
	unsigned long reset_start_time = jiffies;
	unsigned char b;

	gayle_reset = 0x00;
	while (FUNC0(jiffies, reset_start_time + 1*HZ/100));
	b = gayle_reset;
}
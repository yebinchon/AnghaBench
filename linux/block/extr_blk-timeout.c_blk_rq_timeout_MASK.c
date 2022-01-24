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
 scalar_t__ BLK_MAX_TIMEOUT ; 
 scalar_t__ jiffies ; 
 unsigned long FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 

unsigned long FUNC2(unsigned long timeout)
{
	unsigned long maxt;

	maxt = FUNC0(jiffies + BLK_MAX_TIMEOUT);
	if (FUNC1(timeout, maxt))
		timeout = maxt;

	return timeout;
}
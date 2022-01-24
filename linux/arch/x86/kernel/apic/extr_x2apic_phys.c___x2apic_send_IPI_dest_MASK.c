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
 unsigned long FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned int) ; 

void FUNC2(unsigned int apicid, int vector, unsigned int dest)
{
	unsigned long cfg = FUNC0(0, vector, dest);
	FUNC1(cfg, apicid);
}
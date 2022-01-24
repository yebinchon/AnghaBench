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
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC1(unsigned int num_sets, unsigned int is)
{
	unsigned int set;

	asm volatile("ptesync": : :"memory");

	for (set = 0; set < num_sets; set++)
		FUNC0(set, is);

	asm volatile("ptesync": : :"memory");
}
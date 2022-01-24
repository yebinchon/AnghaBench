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
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmap32_rnd_bits ; 
 int /*<<< orphan*/  mmap64_rnd_bits ; 
 scalar_t__ FUNC1 () ; 

unsigned long FUNC2(void)
{
	return FUNC0(FUNC1() ? mmap32_rnd_bits : mmap64_rnd_bits);
}
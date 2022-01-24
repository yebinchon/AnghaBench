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
 int /*<<< orphan*/  CONFIG_X86_64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int __VIRTUAL_MASK_SHIFT ; 

__attribute__((used)) static unsigned long FUNC1(unsigned long u)
{
	int shift;
	if (!FUNC0(CONFIG_X86_64))
		return u;

	shift = 64 - (__VIRTUAL_MASK_SHIFT + 1);
	return (signed long)(u << shift) >> shift;
}
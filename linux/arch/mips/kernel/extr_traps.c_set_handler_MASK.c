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
 scalar_t__ ebase ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,unsigned long) ; 

void FUNC2(unsigned long offset, void *addr, unsigned long size)
{
#ifdef CONFIG_CPU_MICROMIPS
	memcpy((void *)(ebase + offset), ((unsigned char *)addr - 1), size);
#else
	FUNC1((void *)(ebase + offset), addr, size);
#endif
	FUNC0(ebase + offset, ebase + offset + size);
}
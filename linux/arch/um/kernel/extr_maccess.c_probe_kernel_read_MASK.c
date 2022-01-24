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
 long EFAULT ; 
 unsigned long PAGE_SIZE ; 
 long FUNC0 (void*,void const*,size_t) ; 
 scalar_t__ FUNC1 (void*,int) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

long FUNC3(void *dst, const void *src, size_t size)
{
	void *psrc = (void *)FUNC2((unsigned long)src, PAGE_SIZE);

	if ((unsigned long)src < PAGE_SIZE || size <= 0)
		return -EFAULT;

	if (FUNC1(psrc, size + src - psrc) <= 0)
		return -EFAULT;

	return FUNC0(dst, src, size);
}
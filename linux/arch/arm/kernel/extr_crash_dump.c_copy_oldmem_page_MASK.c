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
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EFAULT ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (char*,void*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,size_t) ; 

ssize_t FUNC5(unsigned long pfn, char *buf,
			 size_t csize, unsigned long offset,
			 int userbuf)
{
	void *vaddr;

	if (!csize)
		return 0;

	vaddr = FUNC2(FUNC0(pfn), PAGE_SIZE);
	if (!vaddr)
		return -ENOMEM;

	if (userbuf) {
		if (FUNC1(buf, vaddr + offset, csize)) {
			FUNC3(vaddr);
			return -EFAULT;
		}
	} else {
		FUNC4(buf, vaddr + offset, csize);
	}

	FUNC3(vaddr);
	return csize;
}
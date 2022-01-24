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
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 scalar_t__ FUNC1 (char*,scalar_t__,size_t) ; 
 scalar_t__ kdump_buf_page ; 
 void* FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

ssize_t FUNC6(unsigned long pfn, char *buf,
			 size_t csize, unsigned long offset, int userbuf)
{
	void  *vaddr;

	if (!csize)
		return 0;

	vaddr = FUNC2(pfn);

	if (!userbuf) {
		FUNC4(buf, (vaddr + offset), csize);
		FUNC3(vaddr);
	} else {
		if (!kdump_buf_page) {
			FUNC5("Kdump: Kdump buffer page not allocated\n");

			return -EFAULT;
		}
		FUNC0(kdump_buf_page, vaddr);
		FUNC3(vaddr);
		if (FUNC1(buf, (kdump_buf_page + offset), csize))
			return -EFAULT;
	}

	return csize;
}
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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,size_t,int,int,int,int /*<<< orphan*/ ) ; 

void *FUNC3(void *start, size_t length,
	int prot, int flags, int fd, off_t offset)
{
	void *ret = FUNC2(start, length, prot, flags, fd, offset);
	if (ret == MAP_FAILED)
		FUNC1(FUNC0("mmap failed"));
	return ret;
}
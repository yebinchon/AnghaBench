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
typedef  long uint32_t ;
typedef  unsigned int git_off_t ;
typedef  int /*<<< orphan*/  git_mwindow_file ;
typedef  int /*<<< orphan*/  git_mwindow ;

/* Variables and functions */
 void* Z_NULL ; 
 long FUNC0 (long,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned int,size_t,unsigned int*) ; 
 long FUNC3 (long) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC5(uint32_t *crc_out, git_mwindow_file *mwf, git_off_t start, git_off_t size)
{
	void *ptr;
	uint32_t crc;
	unsigned int left, len;
	git_mwindow *w = NULL;

	crc = FUNC0(0L, Z_NULL, 0);
	while (size) {
		ptr = FUNC2(mwf, &w, start, (size_t)size, &left);
		if (ptr == NULL)
			return -1;

		len = FUNC4(left, (unsigned int)size);
		crc = FUNC0(crc, ptr, len);
		size -= len;
		start += len;
		FUNC1(&w);
	}

	*crc_out = FUNC3(crc);
	return 0;
}
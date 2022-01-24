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
 scalar_t__ FUNC0 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (size_t,char const*,int) ; 

__attribute__((used)) static char *FUNC3(const char *start, size_t n, const char *file, int line)
{
	char *ptr;
	size_t alloclen;

	if (FUNC0(&alloclen, n, 1) ||
		!(ptr = FUNC2(alloclen, file, line)))
		return NULL;

	FUNC1(ptr, start, n);
	ptr[n] = '\0';
	return ptr;
}
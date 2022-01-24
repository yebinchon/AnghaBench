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
 size_t FUNC2 (char const*,size_t) ; 
 char* FUNC3 (size_t,char const*,int) ; 

__attribute__((used)) static char *FUNC4(const char *str, size_t n, const char *file, int line)
{
	size_t length = 0, alloclength;
	char *ptr;

	length = FUNC2(str, n);

	if (FUNC0(&alloclength, length, 1) ||
		!(ptr = FUNC3(alloclength, file, line)))
		return NULL;

	if (length)
		FUNC1(ptr, str, length);

	ptr[length] = '\0';

	return ptr;
}
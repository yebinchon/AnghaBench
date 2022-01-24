#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int item_size; } ;
typedef  TYPE_1__ git_pool ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

char *FUNC3(git_pool *pool, const char *str, size_t n)
{
	char *ptr = NULL;

	FUNC0(pool && str && pool->item_size == sizeof(char));

	if (n == SIZE_MAX)
		return NULL;

	if ((ptr = FUNC1(pool, (n + 1))) != NULL) {
		FUNC2(ptr, str, n);
		ptr[n] = '\0';
	}

	return ptr;
}
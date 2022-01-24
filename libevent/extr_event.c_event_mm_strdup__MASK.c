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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t EV_SIZE_MAX ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (void*,char const*,size_t) ; 
 void* FUNC2 (size_t) ; 
 char* FUNC3 (char const*) ; 
 size_t FUNC4 (char const*) ; 

char *
FUNC5(const char *str)
{
	if (!str) {
		errno = EINVAL;
		return NULL;
	}

	if (&mm_malloc_fn_) {
		size_t ln = FUNC4(str);
		void *p = NULL;
		if (ln == EV_SIZE_MAX)
			goto error;
		p = FUNC2(ln+1);
		if (p)
			return FUNC1(p, str, ln+1);
	} else
#ifdef _WIN32
		return _strdup(str);
#else
		return FUNC3(str);
#endif

error:
	errno = ENOMEM;
	return NULL;
}
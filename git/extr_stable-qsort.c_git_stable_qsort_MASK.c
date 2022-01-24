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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,size_t,int (*) (void const*,void const*),char*) ; 
 size_t FUNC2 (size_t,size_t) ; 
 char* FUNC3 (size_t const) ; 

void FUNC4(void *b, size_t n, size_t s,
		      int (*cmp)(const void *, const void *))
{
	const size_t size = FUNC2(n, s);
	char buf[1024];

	if (size < sizeof(buf)) {
		/* The temporary array fits on the small on-stack buffer. */
		FUNC1(b, n, s, cmp, buf);
	} else {
		/* It's somewhat large, so malloc it.  */
		char *tmp = FUNC3(size);
		FUNC1(b, n, s, cmp, tmp);
		FUNC0(tmp);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* ptr; size_t size; int asize; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (char*) ; 

int FUNC3(git_buf *buf, char *ptr, size_t asize)
{
	FUNC1(buf);

	if (ptr) {
		buf->ptr = ptr;
		buf->size = FUNC2(ptr);
		if (asize)
			buf->asize = (asize < buf->size) ? buf->size + 1 : asize;
		else /* pass 0 to fall back on strlen + 1 */
			buf->asize = buf->size + 1;
	}

	FUNC0(buf, asize);
	return 0;
}
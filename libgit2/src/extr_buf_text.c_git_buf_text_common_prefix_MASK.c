#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t count; char** strings; } ;
typedef  TYPE_1__ git_strarray ;
struct TYPE_9__ {char* ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 

int FUNC3(git_buf *buf, const git_strarray *strings)
{
	size_t i;
	const char *str, *pfx;

	FUNC0(buf);

	if (!strings || !strings->count)
		return 0;

	/* initialize common prefix to first string */
	if (FUNC1(buf, strings->strings[0]) < 0)
		return -1;

	/* go through the rest of the strings, truncating to shared prefix */
	for (i = 1; i < strings->count; ++i) {

		for (str = strings->strings[i], pfx = buf->ptr;
			 *str && *str == *pfx; str++, pfx++)
			/* scanning */;

		FUNC2(buf, pfx - buf->ptr);

		if (!buf->size)
			break;
	}

	return 0;
}
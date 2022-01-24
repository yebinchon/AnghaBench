#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ptr; size_t size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 

void FUNC2(git_buf *path)
{
	int ceiling = FUNC1(path->ptr) + 1;
	FUNC0(ceiling >= 0);

	while (path->size > (size_t)ceiling) {
		if (path->ptr[path->size-1] != '/')
			break;

		path->ptr[path->size-1] = '\0';
		path->size--;
	}
}
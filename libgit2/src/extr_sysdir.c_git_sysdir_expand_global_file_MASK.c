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
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC2(git_buf *path, const char *filename)
{
	int error;

	if ((error = FUNC1(path, NULL)) == 0) {
		if (filename)
			error = FUNC0(path, path->ptr, filename);
	}

	return error;
}
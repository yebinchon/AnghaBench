#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ asize; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 

int FUNC3(git_buf *path)
{
	if (path->asize > 0 &&
		FUNC0(path) > 0 &&
		path->ptr[FUNC0(path) - 1] != '/')
		FUNC2(path, '/');

	return FUNC1(path) ? -1 : 0;
}
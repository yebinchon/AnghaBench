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
struct TYPE_6__ {size_t asize; scalar_t__ ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

void FUNC6(void)
{
	git_buf path = GIT_BUF_INIT;
	size_t asize = 0;

	asize = path.asize;
	FUNC2(FUNC5(&path, "/foo"));
	FUNC1(path.ptr, "/foo");
	FUNC0(asize < path.asize);

	asize = path.asize;
	FUNC2(FUNC4(&path, path.ptr, "this is a new string"));
	FUNC1(path.ptr, "/foo/this is a new string");
	FUNC0(asize < path.asize);

	asize = path.asize;
	FUNC2(FUNC4(&path, path.ptr, "/grow the buffer, grow the buffer, grow the buffer"));
	FUNC1(path.ptr, "/foo/this is a new string/grow the buffer, grow the buffer, grow the buffer");
	FUNC0(asize < path.asize);

	FUNC3(&path);
	FUNC2(FUNC5(&path, "/foo/bar"));

	FUNC2(FUNC4(&path, path.ptr + 4, "baz"));
	FUNC1(path.ptr, "/bar/baz");

	asize = path.asize;
	FUNC2(FUNC4(&path, path.ptr + 4, "somethinglongenoughtorealloc"));
	FUNC1(path.ptr, "/baz/somethinglongenoughtorealloc");
	FUNC0(asize < path.asize);
	
	FUNC3(&path);
}
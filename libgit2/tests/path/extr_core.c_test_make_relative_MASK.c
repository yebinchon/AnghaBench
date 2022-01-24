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
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 

__attribute__((used)) static void FUNC5(
	const char *expected_path,
	const char *path,
	const char *parent,
	int expected_status)
{
	git_buf buf = GIT_BUF_INIT;
	FUNC3(&buf, path);
	FUNC0(expected_status, FUNC4(&buf, parent));
	FUNC1(expected_path, buf.ptr);
	FUNC2(&buf);
}
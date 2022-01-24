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
struct TYPE_5__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char const*) ; 

__attribute__((used)) static void
FUNC6(const char *A, const char *B)
{
	git_buf dir = GIT_BUF_INIT;
	char *dir2;

	FUNC0(FUNC5(&dir, A) >= 0);
	FUNC1(B, dir.ptr);
	FUNC3(&dir);

	FUNC0((dir2 = FUNC4(A)) != NULL);
	FUNC1(B, dir2);
	FUNC2(dir2);
}
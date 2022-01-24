#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  odb ; 

void FUNC7(void)
{
	git_oid expected, oid;
	git_buf buf = GIT_BUF_INIT;
	size_t i;

#ifndef GIT_ARCH_64
	FUNC3();
#endif

	if (!FUNC2("GITTEST_INVASIVE_FS_SIZE") ||
		!FUNC2("GITTEST_INVASIVE_MEMORY") ||
		!FUNC2("GITTEST_SLOW"))
		FUNC3();

	for (i = 0; i < (3041*126103); i++)
		FUNC1(FUNC4(&buf, "Hello, world.\n"));

	FUNC6(&expected, "3fb56989cca483b21ba7cb0a6edb229d10e1c26c");
	FUNC1(FUNC5(&oid, odb, buf.ptr, buf.size, GIT_OBJECT_BLOB));

	FUNC0(&expected, &oid);
}
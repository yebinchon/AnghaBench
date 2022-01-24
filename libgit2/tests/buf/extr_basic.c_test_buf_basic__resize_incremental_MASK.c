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
struct TYPE_6__ {int size; int asize; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

void FUNC6(void)
{
	git_buf buf1 = GIT_BUF_INIT;

	/* Presently, asking for 6 bytes will round up to 8. */
	FUNC2(FUNC5(&buf1, "Hello"));
	FUNC1(5, buf1.size);
	FUNC1(8, buf1.asize);

	/* Ensure an additional byte does not realloc. */
	FUNC2(FUNC4(&buf1, 1));
	FUNC1(5, buf1.size);
	FUNC1(8, buf1.asize);

	/* But requesting many does. */
	FUNC2(FUNC4(&buf1, 16));
	FUNC1(5, buf1.size);
	FUNC0(buf1.asize > 8);

	FUNC3(&buf1);
}
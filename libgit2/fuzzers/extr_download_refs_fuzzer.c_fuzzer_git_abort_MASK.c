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
struct TYPE_3__ {char* message; } ;
typedef  TYPE_1__ git_error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3(const char *op)
{
	const git_error *err = FUNC2();
	FUNC1(stderr, "unexpected libgit error: %s: %s\n",
		op, err ? err->message : "<none>");
	FUNC0();
}
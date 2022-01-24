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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int,char const*,char*,int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

void FUNC3(
	int error, int expected, const char *file, int line, const char *fncall)
{
	char msg[4096];
	const git_error *last = FUNC1();

	if (expected)
		FUNC2(msg, 4096, "error %d (expected %d) - %s",
			error, expected, last ? last->message : "<no message>");
	else if (error || last)
		FUNC2(msg, 4096, "error %d - %s",
			error, last ? last->message : "<no message>");
	else
		FUNC2(msg, 4096, "no error, expected non-zero return");

	FUNC0(0, file, line, fncall, msg, 1);
}
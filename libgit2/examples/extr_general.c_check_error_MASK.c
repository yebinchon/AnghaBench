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
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,char*) ; 

__attribute__((used)) static void FUNC3(int error_code, const char *action)
{
	const git_error *error = FUNC1();
	if (!error_code)
		return;

	FUNC2("Error %d %s - %s\n", error_code, action,
			(error && error->message) ? error->message : "???");

	FUNC0(1);
}
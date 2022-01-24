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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  stderr ; 

void FUNC3(int error, const char *message, const char *extra)
{
	const git_error *lg2err;
	const char *lg2msg = "", *lg2spacer = "";

	if (!error)
		return;

	if ((lg2err = FUNC2()) != NULL && lg2err->message != NULL) {
		lg2msg = lg2err->message;
		lg2spacer = " - ";
	}

	if (extra)
		FUNC1(stderr, "%s '%s' [%d]%s%s\n",
			message, extra, error, lg2spacer, lg2msg);
	else
		FUNC1(stderr, "%s [%d]%s%s\n",
			message, error, lg2spacer, lg2msg);

	FUNC0(1);
}
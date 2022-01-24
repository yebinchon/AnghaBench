#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__ fw_header ; 
 scalar_t__ FUNC2 (char,char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 

int
FUNC4(char ch, char *arg)
{
	if (FUNC2(ch, arg)) {
		goto err_out;
	}

	if (FUNC3(arg, &fw_header.flags) != 0) {
		FUNC1(0,"invalid firmware flags: %s", arg);
		goto err_out;
	}

	FUNC0(1, "firmware flags set to %X bytes", fw_header.flags);

	return 0;

err_out:
	return -1;
}
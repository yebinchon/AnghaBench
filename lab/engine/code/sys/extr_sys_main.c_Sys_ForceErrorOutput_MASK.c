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
struct TYPE_2__ {int integer; } ;

/* Variables and functions */
 TYPE_1__* com_logToStdErr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC1()
{
	int originalErrorOutput = 0;
	if ( com_logToStdErr ) {
		originalErrorOutput = com_logToStdErr->integer;
		com_logToStdErr->integer = 1;
		FUNC0 (stdout);
	}
	return originalErrorOutput;
}
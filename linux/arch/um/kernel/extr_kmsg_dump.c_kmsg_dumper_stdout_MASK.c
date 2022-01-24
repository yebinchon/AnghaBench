#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kmsg_dumper {int dummy; } ;
typedef  int /*<<< orphan*/  line ;
typedef  enum kmsg_dump_reason { ____Placeholder_kmsg_dump_reason } kmsg_dump_reason ;

/* Variables and functions */
 int /*<<< orphan*/ * console_drivers ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct kmsg_dumper*,int,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(struct kmsg_dumper *dumper,
				enum kmsg_dump_reason reason)
{
	static char line[1024];

	size_t len = 0;
	bool con_available = false;

	/* only dump kmsg when no console is available */
	if (!FUNC0())
		return;

	if (console_drivers != NULL)
		con_available = true;

	FUNC1();

	if (con_available == true)
		return;

	FUNC3("kmsg_dump:\n");
	while (FUNC2(dumper, true, line, sizeof(line), &len)) {
		line[len] = '\0';
		FUNC3("%s", line);
	}
}
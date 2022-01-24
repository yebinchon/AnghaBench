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
struct kmsg_dumper {int active; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bus_error_jmp ; 
 int catch_memory_errors ; 
 scalar_t__ FUNC1 (struct kmsg_dumper*,int,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmsg_dumper*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct kmsg_dumper dumper = { .active = 1 };
	unsigned char buf[128];
	size_t len;

	if (FUNC4(bus_error_jmp) != 0) {
		FUNC3("Error dumping printk buffer!\n");
		return;
	}

	catch_memory_errors = 1;
	FUNC5();

	FUNC2(&dumper);
	FUNC7();
	while (FUNC1(&dumper, false, buf, sizeof(buf), &len)) {
		buf[len] = '\0';
		FUNC3("%s", buf);
	}
	FUNC6();

	FUNC5();
	/* wait a little while to see if we get a machine check */
	FUNC0(200);
	catch_memory_errors = 0;
}
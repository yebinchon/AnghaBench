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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 

__attribute__((used)) static void
FUNC2(const char *source)
{
	char *argv[4];

	argv[0] = "/bin/rm";
	argv[1] = "-Rf";
	argv[2] = (char *)source;
	argv[3] = NULL;

	FUNC0(
		FUNC1(argv),
		"Failed to cleanup the sandbox"
	);
}
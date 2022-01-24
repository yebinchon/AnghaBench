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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void
FUNC2(FILE *out, const char *prog, int exit_code)
{
	FUNC1(out,
		"Syntax: %s [ OPTS ] <docroot>\n"
		" -p      - port\n"
		" -U      - bind to unix socket\n"
		" -u      - unlink unix socket before bind\n"
		" -I      - IOCP\n"
		" -v      - verbosity, enables libevent debug logging too\n", prog);
	FUNC0(exit_code);
}
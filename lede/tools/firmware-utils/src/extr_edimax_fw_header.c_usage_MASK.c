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
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static void FUNC2(int status)
{
	FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;

	FUNC1(stream, "Usage: %s [OPTIONS...]\n", progname);
	FUNC1(stream,
"\n"
"Options:\n"
"  -e <addr>       set end addr to <addr>\n"
"  -f              set force flag\n"
"  -h              show this screen\n"
"  -i <file>       read input data from the file <file>\n"
"  -o <file>       write output to the file <file>\n"
"  -m <model>      set model to <model>\n"
"  -M <magic>      set image magic to <magic>\n"
"  -n <name>       set MTD device name to <name>\n"
"  -s <addr>       set start address to <addr>\n"
"  -t <type>       set image type to <type>\n"
"  -v <version>    set firmware version to <version>\n"
	);

	FUNC0(status);
}
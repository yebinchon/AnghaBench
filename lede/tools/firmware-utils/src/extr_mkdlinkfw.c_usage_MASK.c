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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(int status)
{
	FUNC1(stderr, "Usage: %s [OPTIONS...]\n", progname);
	FUNC1(stderr,
		"\n"
		"Options:\n"
		"  -i <file>       inspect given firmware file <file>\n"
		"  -f              set family member id (hexval prefixed with 0x)\n"
		"  -F <file>       read image and convert it to FACTORY\n"
		"  -k <file>       read kernel image from the file <file>\n"
		"  -r <file>       read rootfs image from the file <file>\n"
		"  -o <file>       write output to the file <file>\n"
		"  -s <size>       set firmware partition size\n"
		"  -m <version>    set rom id to <version> (12-bit string val: \"DLK*********\")\n"
		"  -h              show this screen\n");

	FUNC0(status);
}
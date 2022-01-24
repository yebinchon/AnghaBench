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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC1(const char *progname)
{
	FUNC0(stderr, "Usage: %s <options> <firmware>\n"
		"\n"
		"Options:\n"
		"  -S <file>:		Append signature file to firmware image\n"
		"  -I <file>:		Append metadata file to firmware image\n"
		"  -s <file>:		Extract signature file from firmware image\n"
		"  -i <file>:		Extract metadata file from firmware image\n"
		"  -t:			Remove extracted chunks from firmare image (using -s, -i)\n"
		"  -q:			Quiet (suppress error messages)\n"
		"\n", progname);
	return 1;
}
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
FUNC1(const char *prog)
{
	FUNC0(stderr, "Usage: %s [<options>]\n"
		"Options:\n"
		"\t-B             Run in background mode\n"
		"\t-d <device>    Set the device to listen on\n"
		"\t-D <name>      Set the name of the device visible to clients\n"
		"\t-p <file>      Set the password file for authenticating\n"
		"\t-P <file>      Write a pidfile\n"
		"\n", prog);
	return -1;
}
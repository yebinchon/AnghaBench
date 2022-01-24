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
 char* prog ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(const char *err)
{
	if (err)
		FUNC1(stderr, "%s: Error: %s\n\n", prog, err);
	FUNC1(stderr, "Usage: %s [-y|-n|-v] [-s seed[,no]] [-m max] [-i input]\n", prog);
	FUNC1(stderr, "\t-y	64bit mode\n");
	FUNC1(stderr, "\t-n	32bit mode\n");
	FUNC1(stderr, "\t-v	Verbosity(-vv dumps any decoded result)\n");
	FUNC1(stderr, "\t-s	Give a random seed (and iteration number)\n");
	FUNC1(stderr, "\t-m	Give a maximum iteration number\n");
	FUNC1(stderr, "\t-i	Give an input file with decoded binary\n");
	FUNC0(1);
}
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
 scalar_t__ FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** ifname ; 
 scalar_t__ num_files ; 

__attribute__((used)) static int FUNC2(char *name)
{
	if (num_files >= FUNC0(ifname)) {
		FUNC1("too many input files specified");
		return -1;
	}

	ifname[num_files++] = name;
	return 0;
}
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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  generate_info_refs ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(int force)
{
	char *path = FUNC1("info/refs");
	int ret = FUNC2(path, generate_info_refs, force);
	FUNC0(path);
	return ret;
}
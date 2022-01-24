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
 int FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

int FUNC3(const char *path)
{
	char *parent;
	int error;

	if ((parent = FUNC2(path)) == NULL)
		return -1;

	error = FUNC1(parent);
	FUNC0(parent);
	return error;
}
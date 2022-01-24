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
 int FUNC1 (char*,int) ; 
 char* FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(const char *root)
{
	char *path;
	int ret = 0;

	path = FUNC2("%s/pack", root);
	ret = FUNC1(path, 0777);
	FUNC0(path);

	return ret;
}
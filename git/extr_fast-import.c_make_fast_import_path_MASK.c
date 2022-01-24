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
 char* FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  relative_marks_paths ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static char* FUNC3(const char *path)
{
	if (!relative_marks_paths || FUNC1(path))
		return FUNC2(path);
	return FUNC0("info/fast-import/%s", path);
}
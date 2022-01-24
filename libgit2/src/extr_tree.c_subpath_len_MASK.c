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
 char* FUNC0 (char const*,char) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static size_t FUNC2(const char *path)
{
	const char *slash_pos = FUNC0(path, '/');
	if (slash_pos == NULL)
		return FUNC1(path);

	return slash_pos - path;
}
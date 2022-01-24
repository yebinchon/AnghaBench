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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const) ; 

__attribute__((used)) static int FUNC2(const char *path1, const char *path2)
{
	int is_abs1, is_abs2;

	is_abs1 = FUNC0(path1);
	is_abs2 = FUNC0(path2);
	return (is_abs1 && is_abs2 && FUNC1(path1[0]) == FUNC1(path2[0])) ||
	       (!is_abs1 && !is_abs2);
}
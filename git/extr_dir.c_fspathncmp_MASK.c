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
 scalar_t__ ignore_case ; 
 int FUNC0 (char const*,char const*,size_t) ; 
 int FUNC1 (char const*,char const*,size_t) ; 

int FUNC2(const char *a, const char *b, size_t count)
{
	return ignore_case ? FUNC0(a, b, count) : FUNC1(a, b, count);
}
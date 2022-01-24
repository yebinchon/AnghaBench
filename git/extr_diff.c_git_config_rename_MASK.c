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
 int DIFF_DETECT_COPY ; 
 int DIFF_DETECT_RENAME ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

int FUNC2(const char *var, const char *value)
{
	if (!value)
		return DIFF_DETECT_RENAME;
	if (!FUNC1(value, "copies") || !FUNC1(value, "copy"))
		return  DIFF_DETECT_COPY;
	return FUNC0(var,value) ? DIFF_DETECT_RENAME : 0;
}
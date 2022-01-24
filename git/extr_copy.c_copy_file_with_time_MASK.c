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
 int FUNC0 (char const*,char const*,int) ; 
 int FUNC1 (char const*,char const*) ; 

int FUNC2(const char *dst, const char *src, int mode)
{
	int status = FUNC0(dst, src, mode);
	if (!status)
		return FUNC1(dst, src);
	return status;
}
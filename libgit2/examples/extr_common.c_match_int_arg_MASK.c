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
struct args_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*,char const*,int,char const*) ; 
 char* FUNC1 (struct args_info*,char const*) ; 

int FUNC2(
	int *out, struct args_info *args, const char *opt, int allow_negative)
{
	const char *found = FUNC1(args, opt);
	if (!found)
		return 0;
	return FUNC0(out, found, allow_negative, opt);
}
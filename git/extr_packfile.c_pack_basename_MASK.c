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
struct packed_git {char* pack_name; } ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 

const char *FUNC1(struct packed_git *p)
{
	const char *ret = FUNC0(p->pack_name, '/');
	if (ret)
		ret = ret + 1; /* skip past slash */
	else
		ret = p->pack_name; /* we only have a base */
	return ret;
}
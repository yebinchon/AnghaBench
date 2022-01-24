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
struct traverse_info {size_t pathlen; char const* name; size_t namelen; struct traverse_info* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct traverse_info*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (char const*) ; 

void FUNC2(struct traverse_info *info, const char *base)
{
	size_t pathlen = FUNC1(base);
	static struct traverse_info dummy;

	FUNC0(info, 0, sizeof(*info));
	if (pathlen && base[pathlen-1] == '/')
		pathlen--;
	info->pathlen = pathlen ? pathlen + 1 : 0;
	info->name = base;
	info->namelen = pathlen;
	if (pathlen)
		info->prev = &dummy;
}
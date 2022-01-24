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
struct pathspec_item {int magic; int prefix; } ;

/* Variables and functions */
 int PATHSPEC_ICASE ; 
 int FUNC0 (struct pathspec_item const*,char const*,char const*,int) ; 
 int FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC2(const struct pathspec_item *item,
		   const char *base, const char *match, int len)
{
	if (item->magic & PATHSPEC_ICASE) {
		int ret, n = len > item->prefix ? item->prefix : len;
		ret = FUNC1(base, match, n);
		if (ret)
			return ret;
		base += n;
		match += n;
		len -= n;
	}
	return FUNC0(item, base, match, len);
}
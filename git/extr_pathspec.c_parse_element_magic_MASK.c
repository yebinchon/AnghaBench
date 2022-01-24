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
struct pathspec_item {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 char const* FUNC1 (unsigned int*,int*,struct pathspec_item*,char const*) ; 
 char const* FUNC2 (unsigned int*,char const*) ; 

__attribute__((used)) static const char *FUNC3(unsigned *magic, int *prefix_len,
				       struct pathspec_item *item,
				       const char *elem)
{
	if (elem[0] != ':' || FUNC0())
		return elem; /* nothing to do */
	else if (elem[1] == '(')
		/* longhand */
		return FUNC1(magic, prefix_len, item, elem);
	else
		/* shorthand */
		return FUNC2(magic, elem);
}
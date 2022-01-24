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
struct refspec_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct refspec_item*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct refspec_item*,char const*,int) ; 

int FUNC2(struct refspec_item *item, const char *refspec, int fetch)
{
	FUNC0(item, 0, sizeof(*item));
	return FUNC1(item, refspec, fetch);
}
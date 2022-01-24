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
 int /*<<< orphan*/  REFSPEC_FETCH ; 
 int /*<<< orphan*/  FUNC0 (struct refspec_item*) ; 
 int FUNC1 (struct refspec_item*,char const*,int /*<<< orphan*/ ) ; 

int FUNC2(const char *fetch_refspec_str)
{
	struct refspec_item refspec;
	int ret = FUNC1(&refspec, fetch_refspec_str, REFSPEC_FETCH);
	FUNC0(&refspec);
	return ret;
}
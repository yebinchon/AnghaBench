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
struct refspec_item {char* src; char* dst; } ;
struct refspec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct refspec_item*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct refspec*,struct refspec_item*) ; 

char *FUNC2(struct refspec *rs, const char *name)
{
	struct refspec_item query;

	FUNC0(&query, 0, sizeof(struct refspec_item));
	query.src = (char *)name;

	if (FUNC1(rs, &query))
		return NULL;

	return query.dst;
}
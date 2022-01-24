#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  camelcased; } ;

/* Variables and functions */
 int FSCK_MSG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct string_list*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* msg_id_info ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct string_list *list, const char *prefix)
{
	int i;

	FUNC1();

	for (i = 0; i < FSCK_MSG_MAX; i++)
		FUNC0(list, prefix, msg_id_info[i].camelcased);
}
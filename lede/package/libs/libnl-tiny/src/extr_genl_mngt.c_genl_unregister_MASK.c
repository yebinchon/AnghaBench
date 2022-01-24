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
struct nl_cache_ops {TYPE_1__* co_genl; } ;
struct TYPE_2__ {int /*<<< orphan*/  o_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nl_cache_ops*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct nl_cache_ops *ops)
{
	FUNC0(ops);
	FUNC1(&ops->co_genl->o_list);
}
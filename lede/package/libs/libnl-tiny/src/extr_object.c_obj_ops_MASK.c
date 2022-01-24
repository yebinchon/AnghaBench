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
struct nl_object_ops {int dummy; } ;
struct nl_object {struct nl_object_ops* ce_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static inline struct nl_object_ops *FUNC1(struct nl_object *obj)
{
	if (!obj->ce_ops)
		FUNC0();

	return obj->ce_ops;
}
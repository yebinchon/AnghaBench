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
struct nl_object {int dummy; } ;
struct genl_family {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nl_object*) ; 

void FUNC1(struct genl_family *family)
{
	FUNC0((struct nl_object *) family);
}
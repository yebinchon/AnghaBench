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
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC1 (struct fwnode_handle const*,struct fwnode_handle*) ; 

struct fwnode_handle *
FUNC2(const struct fwnode_handle *fwnode,
				     struct fwnode_handle *child)
{
	struct fwnode_handle *next_child = child;

	if (!fwnode)
		return NULL;

	do {
		next_child = FUNC1(fwnode, next_child);

		if (!next_child || FUNC0(next_child))
			break;
	} while (next_child);

	return next_child;
}
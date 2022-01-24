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
 struct fwnode_handle* FUNC0 (struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC1 (struct fwnode_handle const*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwnode_handle*) ; 

struct fwnode_handle *
FUNC3(const struct fwnode_handle *fwnode)
{
	struct fwnode_handle *endpoint, *parent;

	endpoint = FUNC1(fwnode);
	parent = FUNC0(endpoint);

	FUNC2(endpoint);

	return parent;
}
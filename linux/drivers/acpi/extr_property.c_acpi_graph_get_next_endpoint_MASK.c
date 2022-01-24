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
typedef  struct fwnode_handle const fwnode_handle ;

/* Variables and functions */
 struct fwnode_handle const* FUNC0 (struct fwnode_handle const*,struct fwnode_handle const*) ; 
 struct fwnode_handle const* FUNC1 (struct fwnode_handle const*) ; 
 scalar_t__ FUNC2 (struct fwnode_handle const*,char*) ; 

__attribute__((used)) static struct fwnode_handle *FUNC3(
	const struct fwnode_handle *fwnode, struct fwnode_handle *prev)
{
	struct fwnode_handle *port = NULL;
	struct fwnode_handle *endpoint;

	if (!prev) {
		do {
			port = FUNC0(fwnode, port);
			/*
			 * The names of the port nodes begin with "port@"
			 * followed by the number of the port node and they also
			 * have a "reg" property that also has the number of the
			 * port node. For compatibility reasons a node is also
			 * recognised as a port node from the "port" property.
			 */
			if (FUNC2(port, "port"))
				break;
		} while (port);
	} else {
		port = FUNC1(prev);
	}

	if (!port)
		return NULL;

	endpoint = FUNC0(port, prev);
	while (!endpoint) {
		port = FUNC0(fwnode, port);
		if (!port)
			break;
		if (FUNC2(port, "port"))
			endpoint = FUNC0(port, NULL);
	}

	/*
	 * The names of the endpoint nodes begin with "endpoint@" followed by
	 * the number of the endpoint node and they also have a "reg" property
	 * that also has the number of the endpoint node. For compatibility
	 * reasons a node is also recognised as an endpoint node from the
	 * "endpoint" property.
	 */
	if (!FUNC2(endpoint, "endpoint"))
		return NULL;

	return endpoint;
}
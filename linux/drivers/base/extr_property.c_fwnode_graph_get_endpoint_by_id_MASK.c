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
typedef  scalar_t__ u32 ;
struct fwnode_handle {int dummy; } ;
struct fwnode_endpoint {scalar_t__ port; scalar_t__ id; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 unsigned long FWNODE_GRAPH_DEVICE_DISABLED ; 
 unsigned long FWNODE_GRAPH_ENDPOINT_NEXT ; 
 int FUNC0 (struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC1 (struct fwnode_handle const*,struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC2 (struct fwnode_handle*) ; 
 int FUNC3 (struct fwnode_handle*,struct fwnode_endpoint*) ; 
 struct fwnode_handle* FUNC4 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct fwnode_handle*) ; 

struct fwnode_handle *
FUNC6(const struct fwnode_handle *fwnode,
				u32 port, u32 endpoint, unsigned long flags)
{
	struct fwnode_handle *ep = NULL, *best_ep = NULL;
	unsigned int best_ep_id = 0;
	bool endpoint_next = flags & FWNODE_GRAPH_ENDPOINT_NEXT;
	bool enabled_only = !(flags & FWNODE_GRAPH_DEVICE_DISABLED);

	while ((ep = FUNC1(fwnode, ep))) {
		struct fwnode_endpoint fwnode_ep = { 0 };
		int ret;

		if (enabled_only) {
			struct fwnode_handle *dev_node;
			bool available;

			dev_node = FUNC2(ep);
			available = FUNC0(dev_node);
			FUNC5(dev_node);
			if (!available)
				continue;
		}

		ret = FUNC3(ep, &fwnode_ep);
		if (ret < 0)
			continue;

		if (fwnode_ep.port != port)
			continue;

		if (fwnode_ep.id == endpoint)
			return ep;

		if (!endpoint_next)
			continue;

		/*
		 * If the endpoint that has just been found is not the first
		 * matching one and the ID of the one found previously is closer
		 * to the requested endpoint ID, skip it.
		 */
		if (fwnode_ep.id < endpoint ||
		    (best_ep && best_ep_id < fwnode_ep.id))
			continue;

		FUNC5(best_ep);
		best_ep = FUNC4(ep);
		best_ep_id = fwnode_ep.id;
	}

	return best_ep;
}
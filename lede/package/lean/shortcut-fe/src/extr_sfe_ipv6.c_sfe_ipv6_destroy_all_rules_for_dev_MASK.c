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
struct sfe_ipv6_connection {struct net_device* reply_dev; struct net_device* original_dev; struct sfe_ipv6_connection* all_connections_next; } ;
struct sfe_ipv6 {int /*<<< orphan*/  lock; struct sfe_ipv6_connection* all_connections_head; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SFE_SYNC_REASON_DESTROY ; 
 struct sfe_ipv6 __si6 ; 
 int /*<<< orphan*/  FUNC0 (struct sfe_ipv6*,struct sfe_ipv6_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sfe_ipv6*,struct sfe_ipv6_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct net_device *dev)
{
	struct sfe_ipv6 *si = &__si6;
	struct sfe_ipv6_connection *c;

another_round:
	FUNC2(&si->lock);

	for (c = si->all_connections_head; c; c = c->all_connections_next) {
		/*
		 * Does this connection relate to the device we are destroying?
		 */
		if (!dev
		    || (dev == c->original_dev)
		    || (dev == c->reply_dev)) {
			break;
		}
	}

	if (c) {
		FUNC1(si, c);
	}

	FUNC3(&si->lock);

	if (c) {
		FUNC0(si, c, SFE_SYNC_REASON_DESTROY);
		goto another_round;
	}
}
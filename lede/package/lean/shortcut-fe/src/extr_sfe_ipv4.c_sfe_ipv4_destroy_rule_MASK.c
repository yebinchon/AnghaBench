#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sfe_ipv4_connection {int dummy; } ;
struct sfe_ipv4 {int /*<<< orphan*/  lock; int /*<<< orphan*/  connection_destroy_misses; int /*<<< orphan*/  connection_destroy_requests; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  ip; } ;
struct sfe_connection_destroy {int /*<<< orphan*/  dest_port; TYPE_2__ dest_ip; int /*<<< orphan*/  src_port; TYPE_1__ src_ip; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SFE_SYNC_REASON_DESTROY ; 
 struct sfe_ipv4 __si ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sfe_ipv4_connection* FUNC3 (struct sfe_ipv4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sfe_ipv4*,struct sfe_ipv4_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sfe_ipv4*,struct sfe_ipv4_connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct sfe_connection_destroy *sid)
{
	struct sfe_ipv4 *si = &__si;
	struct sfe_ipv4_connection *c;

	FUNC6(&si->lock);
	si->connection_destroy_requests++;

	/*
	 * Check to see if we have a flow that matches the rule we're trying
	 * to destroy.  If there isn't then we can't destroy it.
	 */
	c = FUNC3(si, sid->protocol, sid->src_ip.ip, sid->src_port,
					      sid->dest_ip.ip, sid->dest_port);
	if (!c) {
		si->connection_destroy_misses++;
		FUNC7(&si->lock);

		FUNC1("connection does not exist - p: %d, s: %pI4:%u, d: %pI4:%u\n",
			    sid->protocol, &sid->src_ip, FUNC2(sid->src_port),
			    &sid->dest_ip, FUNC2(sid->dest_port));
		return;
	}

	/*
	 * Remove our connection details from the hash tables.
	 */
	FUNC5(si, c);
	FUNC7(&si->lock);

	FUNC4(si, c, SFE_SYNC_REASON_DESTROY);

	FUNC0("connection destroyed - p: %d, s: %pI4:%u, d: %pI4:%u\n",
		   sid->protocol, &sid->src_ip.ip, FUNC2(sid->src_port),
		   &sid->dest_ip.ip, FUNC2(sid->dest_port));
}
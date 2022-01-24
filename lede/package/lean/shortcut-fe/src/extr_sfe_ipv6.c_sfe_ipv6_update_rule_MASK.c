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
struct sfe_ipv6_connection {int dummy; } ;
struct sfe_ipv6 {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip6; } ;
struct TYPE_3__ {int /*<<< orphan*/  ip6; } ;
struct sfe_connection_create {int /*<<< orphan*/  dest_port; TYPE_2__ dest_ip; int /*<<< orphan*/  src_port; TYPE_1__ src_ip; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 struct sfe_ipv6 __si6 ; 
 struct sfe_ipv6_connection* FUNC0 (struct sfe_ipv6*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sfe_ipv6_connection*,struct sfe_connection_create*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sfe_connection_create *sic)
{
	struct sfe_ipv6_connection *c;
	struct sfe_ipv6 *si = &__si6;

	FUNC2(&si->lock);

	c = FUNC0(si,
				     sic->protocol,
				     sic->src_ip.ip6,
				     sic->src_port,
				     sic->dest_ip.ip6,
				     sic->dest_port);
	if (c != NULL) {
		FUNC1(c, sic);
	}

	FUNC3(&si->lock);
}
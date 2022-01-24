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
struct sfe_ipv4_connection {scalar_t__ mark; } ;
struct sfe_ipv4 {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  ip; } ;
struct sfe_connection_mark {scalar_t__ mark; int /*<<< orphan*/  dest_port; TYPE_2__ dest_ip; int /*<<< orphan*/  src_port; TYPE_1__ src_ip; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sfe_ipv4 __si ; 
 struct sfe_ipv4_connection* FUNC2 (struct sfe_ipv4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct sfe_connection_mark *mark)
{
	struct sfe_ipv4 *si = &__si;
	struct sfe_ipv4_connection *c;

	FUNC3(&si->lock);
	c = FUNC2(si, mark->protocol,
					      mark->src_ip.ip, mark->src_port,
					      mark->dest_ip.ip, mark->dest_port);
	if (c) {
		FUNC1((0 != c->mark) && (0 == mark->mark));
		c->mark = mark->mark;
	}
	FUNC4(&si->lock);

	if (c) {
		FUNC0("Matching connection found for mark, "
			    "setting from %08x to %08x\n",
			    c->mark, mark->mark);
	}
}
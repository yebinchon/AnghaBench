#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uml_net_private {scalar_t__ user; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** argv; } ;
struct slirp_init {TYPE_1__ argw; } ;
struct slirp_data {int pid; int slave; TYPE_1__ argw; int /*<<< orphan*/  slip; struct net_device* dev; } ;
struct net_device {int tx_queue_len; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; scalar_t__ addr_len; int /*<<< orphan*/ * header_ops; scalar_t__ hard_header_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_SLIP ; 
 int /*<<< orphan*/  IFF_NOARP ; 
 struct uml_net_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct net_device *dev, void *data)
{
	struct uml_net_private *private;
	struct slirp_data *spri;
	struct slirp_init *init = data;
	int i;

	private = FUNC0(dev);
	spri = (struct slirp_data *) private->user;

	spri->argw = init->argw;
	spri->pid = -1;
	spri->slave = -1;
	spri->dev = dev;

	FUNC2(&spri->slip);

	dev->hard_header_len = 0;
	dev->header_ops = NULL;
	dev->addr_len = 0;
	dev->type = ARPHRD_SLIP;
	dev->tx_queue_len = 256;
	dev->flags = IFF_NOARP;
	FUNC1("SLIRP backend - command line:");
	for (i = 0; spri->argw.argv[i] != NULL; i++)
		FUNC1(" '%s'",spri->argw.argv[i]);
	FUNC1("\n");
}
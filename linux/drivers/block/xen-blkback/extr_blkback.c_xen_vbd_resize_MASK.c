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
struct xenbus_transaction {int dummy; } ;
struct xenbus_device {unsigned long long state; int /*<<< orphan*/  nodename; } ;
struct xen_vbd {unsigned long long size; int /*<<< orphan*/  pdevice; } ;
struct xen_blkif {int /*<<< orphan*/  domid; int /*<<< orphan*/  be; struct xen_vbd vbd; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned long long FUNC4 (struct xen_vbd*) ; 
 struct xenbus_device* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,char*,unsigned long long) ; 
 int FUNC7 (struct xenbus_transaction,int) ; 
 int FUNC8 (struct xenbus_transaction*) ; 

__attribute__((used)) static void FUNC9(struct xen_blkif *blkif)
{
	struct xen_vbd *vbd = &blkif->vbd;
	struct xenbus_transaction xbt;
	int err;
	struct xenbus_device *dev = FUNC5(blkif->be);
	unsigned long long new_size = FUNC4(vbd);

	FUNC2("VBD Resize: Domid: %d, Device: (%d, %d)\n",
		blkif->domid, FUNC0(vbd->pdevice), FUNC1(vbd->pdevice));
	FUNC2("VBD Resize: new size %llu\n", new_size);
	vbd->size = new_size;
again:
	err = FUNC8(&xbt);
	if (err) {
		FUNC3("Error starting transaction\n");
		return;
	}
	err = FUNC6(xbt, dev->nodename, "sectors", "%llu",
			    (unsigned long long)FUNC4(vbd));
	if (err) {
		FUNC3("Error writing new size\n");
		goto abort;
	}
	/*
	 * Write the current state; we will use this to synchronize
	 * the front-end. If the current state is "connected" the
	 * front-end will get the new size information online.
	 */
	err = FUNC6(xbt, dev->nodename, "state", "%d", dev->state);
	if (err) {
		FUNC3("Error writing the state\n");
		goto abort;
	}

	err = FUNC7(xbt, 0);
	if (err == -EAGAIN)
		goto again;
	if (err)
		FUNC3("Error ending transaction\n");
	return;
abort:
	FUNC7(xbt, 1);
}
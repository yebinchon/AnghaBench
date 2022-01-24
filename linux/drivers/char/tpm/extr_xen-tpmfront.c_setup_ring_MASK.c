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
struct xenbus_device {int /*<<< orphan*/  nodename; } ;
struct tpm_private {int irq; int /*<<< orphan*/  evtchn; int /*<<< orphan*/  ring_ref; void* shr; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  XenbusStateInitialised ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct tpm_private*) ; 
 int /*<<< orphan*/  tpmif_interrupt ; 
 int FUNC2 (struct xenbus_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xenbus_device*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*,int,char*) ; 
 int FUNC5 (struct xenbus_device*,void*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xenbus_transaction,int) ; 
 int FUNC9 (struct xenbus_transaction*) ; 

__attribute__((used)) static int FUNC10(struct xenbus_device *dev, struct tpm_private *priv)
{
	struct xenbus_transaction xbt;
	const char *message = NULL;
	int rv;
	grant_ref_t gref;

	priv->shr = (void *)FUNC0(GFP_KERNEL|__GFP_ZERO);
	if (!priv->shr) {
		FUNC4(dev, -ENOMEM, "allocating shared ring");
		return -ENOMEM;
	}

	rv = FUNC5(dev, priv->shr, 1, &gref);
	if (rv < 0)
		return rv;

	priv->ring_ref = gref;

	rv = FUNC2(dev, &priv->evtchn);
	if (rv)
		return rv;

	rv = FUNC1(priv->evtchn, tpmif_interrupt, 0,
				       "tpmif", priv);
	if (rv <= 0) {
		FUNC4(dev, rv, "allocating TPM irq");
		return rv;
	}
	priv->irq = rv;

 again:
	rv = FUNC9(&xbt);
	if (rv) {
		FUNC4(dev, rv, "starting transaction");
		return rv;
	}

	rv = FUNC6(xbt, dev->nodename,
			"ring-ref", "%u", priv->ring_ref);
	if (rv) {
		message = "writing ring-ref";
		goto abort_transaction;
	}

	rv = FUNC6(xbt, dev->nodename, "event-channel", "%u",
			priv->evtchn);
	if (rv) {
		message = "writing event-channel";
		goto abort_transaction;
	}

	rv = FUNC6(xbt, dev->nodename, "feature-protocol-v2", "1");
	if (rv) {
		message = "writing feature-protocol-v2";
		goto abort_transaction;
	}

	rv = FUNC8(xbt, 0);
	if (rv == -EAGAIN)
		goto again;
	if (rv) {
		FUNC4(dev, rv, "completing transaction");
		return rv;
	}

	FUNC7(dev, XenbusStateInitialised);

	return 0;

 abort_transaction:
	FUNC8(xbt, 1);
	if (message)
		FUNC3(dev, rv, "%s", message);

	return rv;
}
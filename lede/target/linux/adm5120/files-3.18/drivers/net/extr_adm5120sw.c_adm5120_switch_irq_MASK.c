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
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  name; } ;
struct adm5120_if_priv {int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  RX_RING_SIZE ; 
 int SWITCH_INTS_ALL ; 
 int SWITCH_INTS_POLL ; 
 int SWITCH_INT_LDF ; 
 int SWITCH_INT_RLD ; 
 int SWITCH_INT_SLD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct adm5120_if_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 () ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	u32 status;

	status = FUNC8();
	status &= SWITCH_INTS_ALL;
	if (!status)
		return IRQ_NONE;

#ifdef CONFIG_ADM5120_SWITCH_NAPI
	sw_int_ack(status & ~SWITCH_INTS_POLL);

	if (status & SWITCH_INTS_POLL) {
		struct net_device *dev = dev_id;
		struct adm5120_if_priv *priv = netdev_priv(dev);

		sw_dump_intr_mask("poll ints", status);
		SW_DBG("enable polling mode for %s\n", dev->name);
		sw_int_mask(SWITCH_INTS_POLL);
		napi_schedule(&priv->napi);
	}
#else
	FUNC6(status);

	if (status & (SWITCH_INT_RLD | SWITCH_INT_LDF))
		FUNC1(RX_RING_SIZE);

	if (status & SWITCH_INT_SLD)
		FUNC2();
#endif

	return IRQ_HANDLED;
}
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
struct ll_struct {scalar_t__ hcill_state; int /*<<< orphan*/  hcill_lock; } ;
struct hci_uart {struct ll_struct* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ HCILL_ASLEEP ; 
 scalar_t__ HCILL_AWAKE ; 
 int /*<<< orphan*/  HCILL_GO_TO_SLEEP_ACK ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct hci_uart *hu)
{
	unsigned long flags;
	struct ll_struct *ll = hu->priv;

	FUNC0("hu %p", hu);

	/* lock hcill state */
	FUNC4(&ll->hcill_lock, flags);

	/* sanity check */
	if (ll->hcill_state != HCILL_AWAKE)
		FUNC1("ERR: HCILL_GO_TO_SLEEP_IND in state %ld",
		       ll->hcill_state);

	/* acknowledge device sleep */
	if (FUNC3(HCILL_GO_TO_SLEEP_ACK, hu) < 0) {
		FUNC1("cannot acknowledge device sleep");
		goto out;
	}

	/* update state */
	ll->hcill_state = HCILL_ASLEEP;

out:
	FUNC5(&ll->hcill_lock, flags);

	/* actually send the sleep ack packet */
	FUNC2(hu);
}
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
struct hci_uart {int /*<<< orphan*/  hdev; struct h5* priv; } ;
struct h5 {scalar_t__ tx_ack; scalar_t__ tx_seq; int /*<<< orphan*/  unack; int /*<<< orphan*/  unrel; int /*<<< orphan*/  rel; int /*<<< orphan*/  timer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H5_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hci_uart *hu)
{
	struct h5 *h5 = hu->priv;

	FUNC0("Peer device has reset");

	h5->state = H5_UNINITIALIZED;

	FUNC1(&h5->timer);

	FUNC3(&h5->rel);
	FUNC3(&h5->unrel);
	FUNC3(&h5->unack);

	h5->tx_seq = 0;
	h5->tx_ack = 0;

	/* Send reset request to upper stack */
	FUNC2(hu->hdev);
}
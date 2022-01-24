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
struct qca_data {int /*<<< orphan*/  hci_ibs_lock; int /*<<< orphan*/  flags; } ;
struct hci_uart {struct qca_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  QCA_IBS_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct hci_uart *hu)
{
	struct qca_data *qca = hu->priv;
	unsigned long flags;

	/* From this point we go into power off state. But serial port is
	 * still open, stop queueing the IBS data and flush all the buffered
	 * data in skb's.
	 */
	FUNC5(&qca->hci_ibs_lock, flags);
	FUNC0(QCA_IBS_ENABLED, &qca->flags);
	FUNC2(hu);
	FUNC6(&qca->hci_ibs_lock, flags);

	FUNC1(hu, 2400);
	FUNC4(hu, false);
	FUNC3(hu, false);
}
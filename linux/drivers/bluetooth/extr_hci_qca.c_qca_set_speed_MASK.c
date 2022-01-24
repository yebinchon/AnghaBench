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
struct qca_data {int /*<<< orphan*/  flags; int /*<<< orphan*/  drop_ev_comp; } ;
struct hci_uart {int /*<<< orphan*/  hdev; struct qca_data* priv; } ;
typedef  enum qca_speed_type { ____Placeholder_qca_speed_type } qca_speed_type ;
typedef  enum qca_btsoc_type { ____Placeholder_qca_btsoc_type } qca_btsoc_type ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  QCA_DROP_VENDOR_EVENT ; 
 int QCA_INIT_SPEED ; 
 int QCA_OPER_SPEED ; 
 int QCA_WCN3990 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_uart*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 unsigned int FUNC6 (unsigned int) ; 
 unsigned int FUNC7 (struct hci_uart*,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC10 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct hci_uart *hu, enum qca_speed_type speed_type)
{
	unsigned int speed, qca_baudrate;
	struct qca_data *qca = hu->priv;
	int ret = 0;

	if (speed_type == QCA_INIT_SPEED) {
		speed = FUNC7(hu, QCA_INIT_SPEED);
		if (speed)
			FUNC4(hu, speed);
	} else {
		enum qca_btsoc_type soc_type = FUNC10(hu);

		speed = FUNC7(hu, QCA_OPER_SPEED);
		if (!speed)
			return 0;

		/* Disable flow control for wcn3990 to deassert RTS while
		 * changing the baudrate of chip and host.
		 */
		if (FUNC8(soc_type))
			FUNC3(hu, true);

		if (soc_type == QCA_WCN3990) {
			FUNC11(&qca->drop_ev_comp);
			FUNC12(QCA_DROP_VENDOR_EVENT, &qca->flags);
		}

		qca_baudrate = FUNC6(speed);
		FUNC0(hu->hdev, "Set UART speed to %d", speed);
		ret = FUNC9(hu->hdev, qca_baudrate);
		if (ret)
			goto error;

		FUNC4(hu, speed);

error:
		if (FUNC8(soc_type))
			FUNC3(hu, false);

		if (soc_type == QCA_WCN3990) {
			/* Wait for the controller to send the vendor event
			 * for the baudrate change command.
			 */
			if (!FUNC13(&qca->drop_ev_comp,
						 FUNC5(100))) {
				FUNC1(hu->hdev,
					   "Failed to change controller baudrate\n");
				ret = -ETIMEDOUT;
			}

			FUNC2(QCA_DROP_VENDOR_EVENT, &qca->flags);
		}
	}

	return ret;
}
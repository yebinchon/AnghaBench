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
struct serdev_device {int /*<<< orphan*/  dev; } ;
struct qca_vreg_data {int /*<<< orphan*/  num_vregs; int /*<<< orphan*/  vregs; int /*<<< orphan*/  soc_type; } ;
struct TYPE_4__ {struct serdev_device* serdev; } ;
struct qca_serdev {int /*<<< orphan*/  susclk; TYPE_2__ serdev_hu; int /*<<< orphan*/  bt_en; int /*<<< orphan*/  btsoc_type; int /*<<< orphan*/  oper_speed; TYPE_1__* bt_power; int /*<<< orphan*/  firmware_name; } ;
struct qca_power {int dummy; } ;
struct TYPE_3__ {int vregs_on; struct qca_vreg_data const* vreg_data; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QCA_ROME ; 
 int /*<<< orphan*/  SUSCLK_RATE_32KHZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct qca_vreg_data* FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qca_proto ; 
 int /*<<< orphan*/  FUNC17 (struct serdev_device*,struct qca_serdev*) ; 

__attribute__((used)) static int FUNC18(struct serdev_device *serdev)
{
	struct qca_serdev *qcadev;
	const struct qca_vreg_data *data;
	int err;

	qcadev = FUNC12(&serdev->dev, sizeof(*qcadev), GFP_KERNEL);
	if (!qcadev)
		return -ENOMEM;

	qcadev->serdev_hu.serdev = serdev;
	data = FUNC14(&serdev->dev);
	FUNC17(serdev, qcadev);
	FUNC8(&serdev->dev, "firmware-name",
					 &qcadev->firmware_name);
	if (data && FUNC16(data->soc_type)) {
		qcadev->btsoc_type = data->soc_type;
		qcadev->bt_power = FUNC12(&serdev->dev,
						sizeof(struct qca_power),
						GFP_KERNEL);
		if (!qcadev->bt_power)
			return -ENOMEM;

		qcadev->bt_power->dev = &serdev->dev;
		qcadev->bt_power->vreg_data = data;
		err = FUNC15(qcadev->bt_power, data->vregs,
					  data->num_vregs);
		if (err) {
			FUNC1("Failed to init regulators:%d", err);
			goto out;
		}

		qcadev->bt_power->vregs_on = false;

		FUNC9(&serdev->dev, "max-speed",
					 &qcadev->oper_speed);
		if (!qcadev->oper_speed)
			FUNC0("UART will pick default operating speed");

		err = FUNC13(&qcadev->serdev_hu, &qca_proto);
		if (err) {
			FUNC1("wcn3990 serdev registration failed");
			goto out;
		}
	} else {
		qcadev->btsoc_type = QCA_ROME;
		qcadev->bt_en = FUNC11(&serdev->dev, "enable",
					       GPIOD_OUT_LOW);
		if (FUNC2(qcadev->bt_en)) {
			FUNC7(&serdev->dev, "failed to acquire enable gpio\n");
			return FUNC3(qcadev->bt_en);
		}

		qcadev->susclk = FUNC10(&serdev->dev, NULL);
		if (FUNC2(qcadev->susclk)) {
			FUNC7(&serdev->dev, "failed to acquire clk\n");
			return FUNC3(qcadev->susclk);
		}

		err = FUNC6(qcadev->susclk, SUSCLK_RATE_32KHZ);
		if (err)
			return err;

		err = FUNC5(qcadev->susclk);
		if (err)
			return err;

		err = FUNC13(&qcadev->serdev_hu, &qca_proto);
		if (err)
			FUNC4(qcadev->susclk);
	}

out:	return err;

}
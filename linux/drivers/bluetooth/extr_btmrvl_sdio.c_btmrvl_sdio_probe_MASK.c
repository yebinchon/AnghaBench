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
struct sdio_func {int /*<<< orphan*/  dev; int /*<<< orphan*/  num; } ;
struct sdio_device_id {scalar_t__ driver_data; int /*<<< orphan*/  class; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct btmrvl_sdio_device {int /*<<< orphan*/  supports_fw_dump; int /*<<< orphan*/  support_pscan_win_report; int /*<<< orphan*/  sd_blksz_fw_dl; int /*<<< orphan*/  reg; int /*<<< orphan*/  firmware; int /*<<< orphan*/  helper; } ;
struct btmrvl_sdio_card {struct btmrvl_private* priv; int /*<<< orphan*/  supports_fw_dump; int /*<<< orphan*/  support_pscan_win_report; int /*<<< orphan*/  sd_blksz_fw_dl; int /*<<< orphan*/  reg; int /*<<< orphan*/  firmware; int /*<<< orphan*/  helper; struct sdio_func* func; } ;
struct btmrvl_private {int /*<<< orphan*/  hw_process_int_status; int /*<<< orphan*/  hw_wakeup_firmware; int /*<<< orphan*/  hw_host_to_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct btmrvl_private* FUNC2 (struct btmrvl_sdio_card*) ; 
 scalar_t__ FUNC3 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct btmrvl_sdio_card*) ; 
 scalar_t__ FUNC5 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  btmrvl_sdio_host_to_card ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  btmrvl_sdio_process_int_status ; 
 scalar_t__ FUNC8 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  btmrvl_sdio_wakeup_fw ; 
 struct btmrvl_sdio_card* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sdio_func *func,
					const struct sdio_device_id *id)
{
	int ret = 0;
	struct btmrvl_private *priv = NULL;
	struct btmrvl_sdio_card *card = NULL;

	FUNC1("vendor=0x%x, device=0x%x, class=%d, fn=%d",
			id->vendor, id->device, id->class, func->num);

	card = FUNC10(&func->dev, sizeof(*card), GFP_KERNEL);
	if (!card)
		return -ENOMEM;

	card->func = func;

	if (id->driver_data) {
		struct btmrvl_sdio_device *data = (void *) id->driver_data;
		card->helper = data->helper;
		card->firmware = data->firmware;
		card->reg = data->reg;
		card->sd_blksz_fw_dl = data->sd_blksz_fw_dl;
		card->support_pscan_win_report = data->support_pscan_win_report;
		card->supports_fw_dump = data->supports_fw_dump;
	}

	if (FUNC8(card) < 0) {
		FUNC0("Failed to register BT device!");
		return -ENODEV;
	}

	/* Disable the interrupts on the card */
	FUNC4(card);

	if (FUNC5(card)) {
		FUNC0("Downloading firmware failed!");
		ret = -ENODEV;
		goto unreg_dev;
	}

	FUNC6(card);

	/* Device tree node parsing and platform specific configuration*/
	FUNC7(&func->dev, card);

	priv = FUNC2(card);
	if (!priv) {
		FUNC0("Initializing card failed!");
		ret = -ENODEV;
		goto disable_host_int;
	}

	card->priv = priv;

	/* Initialize the interface specific function pointers */
	priv->hw_host_to_card = btmrvl_sdio_host_to_card;
	priv->hw_wakeup_firmware = btmrvl_sdio_wakeup_fw;
	priv->hw_process_int_status = btmrvl_sdio_process_int_status;

	if (FUNC3(priv)) {
		FUNC0("Register hdev failed!");
		ret = -ENODEV;
		goto disable_host_int;
	}

	return 0;

disable_host_int:
	FUNC4(card);
unreg_dev:
	FUNC9(card);
	return ret;
}
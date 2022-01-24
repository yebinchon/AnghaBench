#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int /*<<< orphan*/  name; } ;
struct btsdio_data {TYPE_1__* func; } ;
struct TYPE_7__ {scalar_t__ class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_EN_INTRD ; 
 int /*<<< orphan*/  REG_MD_SET ; 
 scalar_t__ SDIO_CLASS_BT_B ; 
 int /*<<< orphan*/  btsdio_interrupt ; 
 struct btsdio_data* FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev)
{
	struct btsdio_data *data = FUNC1(hdev);
	int err;

	FUNC0("%s", hdev->name);

	FUNC2(data->func);

	err = FUNC5(data->func);
	if (err < 0)
		goto release;

	err = FUNC3(data->func, btsdio_interrupt);
	if (err < 0) {
		FUNC4(data->func);
		goto release;
	}

	if (data->func->class == SDIO_CLASS_BT_B)
		FUNC7(data->func, 0x00, REG_MD_SET, NULL);

	FUNC7(data->func, 0x01, REG_EN_INTRD, NULL);

release:
	FUNC6(data->func);

	return err;
}
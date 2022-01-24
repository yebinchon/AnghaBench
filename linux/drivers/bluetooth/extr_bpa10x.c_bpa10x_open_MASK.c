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
struct hci_dev {int /*<<< orphan*/  name; } ;
struct bpa10x_data {int /*<<< orphan*/  rx_anchor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hci_dev*) ; 
 int FUNC2 (struct hci_dev*) ; 
 struct bpa10x_data* FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hci_dev *hdev)
{
	struct bpa10x_data *data = FUNC3(hdev);
	int err;

	FUNC0("%s", hdev->name);

	err = FUNC2(hdev);
	if (err < 0)
		goto error;

	err = FUNC1(hdev);
	if (err < 0)
		goto error;

	return 0;

error:
	FUNC4(&data->rx_anchor);

	return err;
}
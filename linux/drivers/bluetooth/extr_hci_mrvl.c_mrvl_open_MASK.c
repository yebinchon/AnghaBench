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
struct mrvl_data {int /*<<< orphan*/  flags; int /*<<< orphan*/  rawq; int /*<<< orphan*/  txq; } ;
struct hci_uart {scalar_t__ serdev; struct mrvl_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  STATE_CHIP_VER_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC2 (struct mrvl_data*) ; 
 struct mrvl_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hci_uart *hu)
{
	struct mrvl_data *mrvl;
	int ret;

	FUNC0("hu %p", hu);

	if (!FUNC1(hu))
		return -EOPNOTSUPP;

	mrvl = FUNC3(sizeof(*mrvl), GFP_KERNEL);
	if (!mrvl)
		return -ENOMEM;

	FUNC6(&mrvl->txq);
	FUNC6(&mrvl->rawq);

	FUNC5(STATE_CHIP_VER_PENDING, &mrvl->flags);

	hu->priv = mrvl;

	if (hu->serdev) {
		ret = FUNC4(hu->serdev);
		if (ret)
			goto err;
	}

	return 0;
err:
	FUNC2(mrvl);

	return ret;
}
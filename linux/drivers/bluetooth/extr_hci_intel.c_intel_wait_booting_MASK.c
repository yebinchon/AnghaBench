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
struct intel_data {int /*<<< orphan*/  flags; } ;
struct hci_uart {int /*<<< orphan*/  hdev; struct intel_data* priv; } ;

/* Variables and functions */
 int EINTR ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  STATE_BOOTING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hci_uart *hu)
{
	struct intel_data *intel = hu->priv;
	int err;

	err = FUNC2(&intel->flags, STATE_BOOTING,
				  TASK_INTERRUPTIBLE,
				  FUNC1(1000));

	if (err == -EINTR) {
		FUNC0(hu->hdev, "Device boot interrupted");
		return -EINTR;
	}

	if (err) {
		FUNC0(hu->hdev, "Device boot timeout");
		return -ETIMEDOUT;
	}

	return err;
}
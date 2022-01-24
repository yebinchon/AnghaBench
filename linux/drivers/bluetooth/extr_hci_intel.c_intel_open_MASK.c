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
struct intel_data {int /*<<< orphan*/  flags; struct hci_uart* hu; int /*<<< orphan*/  busy_work; int /*<<< orphan*/  txq; } ;
struct hci_uart {struct intel_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_BOOTING ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*) ; 
 int /*<<< orphan*/  intel_busy_work ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*,int) ; 
 struct intel_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hci_uart *hu)
{
	struct intel_data *intel;

	FUNC0("hu %p", hu);

	if (!FUNC2(hu))
		return -EOPNOTSUPP;

	intel = FUNC4(sizeof(*intel), GFP_KERNEL);
	if (!intel)
		return -ENOMEM;

	FUNC6(&intel->txq);
	FUNC1(&intel->busy_work, intel_busy_work);

	intel->hu = hu;

	hu->priv = intel;

	if (!FUNC3(hu, true))
		FUNC5(STATE_BOOTING, &intel->flags);

	return 0;
}
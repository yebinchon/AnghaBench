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
struct hci_uart {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  QCA_INIT_SPEED ; 
 int /*<<< orphan*/  QCA_OPER_SPEED ; 
 int /*<<< orphan*/  FUNC0 (struct hci_uart*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*) ; 

__attribute__((used)) static int FUNC3(struct hci_uart *hu)
{
	if (FUNC1(FUNC2(hu))) {
		if (!FUNC0(hu, QCA_INIT_SPEED) &&
		    !FUNC0(hu, QCA_OPER_SPEED))
			return -EINVAL;
	} else {
		if (!FUNC0(hu, QCA_INIT_SPEED) ||
		    !FUNC0(hu, QCA_OPER_SPEED))
			return -EINVAL;
	}

	return 0;
}
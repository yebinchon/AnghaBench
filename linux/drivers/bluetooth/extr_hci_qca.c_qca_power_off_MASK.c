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
struct hci_dev {int dummy; } ;

/* Variables and functions */
 struct hci_uart* FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct hci_dev *hdev)
{
	struct hci_uart *hu = FUNC0(hdev);

	/* Perform pre shutdown command */
	FUNC2(hdev);

	FUNC3(8000, 10000);

	FUNC1(hu);
	return 0;
}
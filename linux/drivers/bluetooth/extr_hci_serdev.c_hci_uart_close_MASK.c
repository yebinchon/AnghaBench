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
struct hci_dev {int /*<<< orphan*/ * flush; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC2(struct hci_dev *hdev)
{
	FUNC0("hdev %p", hdev);

	FUNC1(hdev);
	hdev->flush = NULL;

	return 0;
}
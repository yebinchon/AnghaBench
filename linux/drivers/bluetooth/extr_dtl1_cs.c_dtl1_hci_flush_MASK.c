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
struct hci_dev {int dummy; } ;
struct dtl1_info {int /*<<< orphan*/  txq; } ;

/* Variables and functions */
 struct dtl1_info* FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hci_dev *hdev)
{
	struct dtl1_info *info = FUNC0(hdev);

	/* Drop TX queue */
	FUNC1(&(info->txq));

	return 0;
}
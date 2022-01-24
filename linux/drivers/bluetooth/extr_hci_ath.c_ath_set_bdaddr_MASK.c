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
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  INDEX_BDADDR ; 
 int /*<<< orphan*/  OP_WRITE_TAG ; 
 int FUNC0 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC1(struct hci_dev *hdev, const bdaddr_t *bdaddr)
{
	return FUNC0(hdev, OP_WRITE_TAG, INDEX_BDADDR, bdaddr,
			      sizeof(*bdaddr));
}
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
struct btmrvl_private {struct btmrvl_debugfs_data* debugfs_data; } ;
struct btmrvl_debugfs_data {int /*<<< orphan*/  status_dir; int /*<<< orphan*/  config_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct btmrvl_private* FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct btmrvl_debugfs_data*) ; 

void FUNC3(struct hci_dev *hdev)
{
	struct btmrvl_private *priv = FUNC1(hdev);
	struct btmrvl_debugfs_data *dbg = priv->debugfs_data;

	if (!dbg)
		return;

	FUNC0(dbg->config_dir);
	FUNC0(dbg->status_dir);

	FUNC2(dbg);
}
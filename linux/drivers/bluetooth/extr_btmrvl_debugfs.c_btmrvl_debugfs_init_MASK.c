#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int /*<<< orphan*/  debugfs; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dnld_rdy; int /*<<< orphan*/  hsmode; int /*<<< orphan*/  gpio_gap; int /*<<< orphan*/  psmode; } ;
struct btmrvl_private {TYPE_2__ btmrvl_dev; TYPE_1__* adapter; struct btmrvl_debugfs_data* debugfs_data; } ;
struct btmrvl_debugfs_data {void* status_dir; void* config_dir; } ;
struct TYPE_3__ {int /*<<< orphan*/  hs_state; int /*<<< orphan*/  ps_state; int /*<<< orphan*/  psmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  btmrvl_hscfgcmd_fops ; 
 int /*<<< orphan*/  btmrvl_hscmd_fops ; 
 int /*<<< orphan*/  btmrvl_pscmd_fops ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,void*,struct btmrvl_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,void*,int /*<<< orphan*/ *) ; 
 struct btmrvl_private* FUNC5 (struct hci_dev*) ; 
 struct btmrvl_debugfs_data* FUNC6 (int,int /*<<< orphan*/ ) ; 

void FUNC7(struct hci_dev *hdev)
{
	struct btmrvl_private *priv = FUNC5(hdev);
	struct btmrvl_debugfs_data *dbg;

	if (!hdev->debugfs)
		return;

	dbg = FUNC6(sizeof(*dbg), GFP_KERNEL);
	priv->debugfs_data = dbg;

	if (!dbg) {
		FUNC0("Can not allocate memory for btmrvl_debugfs_data.");
		return;
	}

	dbg->config_dir = FUNC1("config", hdev->debugfs);

	FUNC3("psmode", 0644, dbg->config_dir,
			  &priv->btmrvl_dev.psmode);
	FUNC2("pscmd", 0644, dbg->config_dir,
			    priv, &btmrvl_pscmd_fops);
	FUNC4("gpiogap", 0644, dbg->config_dir,
			   &priv->btmrvl_dev.gpio_gap);
	FUNC3("hsmode", 0644, dbg->config_dir,
			  &priv->btmrvl_dev.hsmode);
	FUNC2("hscmd", 0644, dbg->config_dir,
			    priv, &btmrvl_hscmd_fops);
	FUNC2("hscfgcmd", 0644, dbg->config_dir,
			    priv, &btmrvl_hscfgcmd_fops);

	dbg->status_dir = FUNC1("status", hdev->debugfs);
	FUNC3("curpsmode", 0444, dbg->status_dir,
			  &priv->adapter->psmode);
	FUNC3("psstate", 0444, dbg->status_dir,
			  &priv->adapter->ps_state);
	FUNC3("hsstate", 0444, dbg->status_dir,
			  &priv->adapter->hs_state);
	FUNC3("txdnldready", 0444, dbg->status_dir,
			  &priv->btmrvl_dev.tx_dnld_rdy);
}
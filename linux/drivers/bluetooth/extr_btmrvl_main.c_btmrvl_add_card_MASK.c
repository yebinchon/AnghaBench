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
struct TYPE_3__ {int tx_dnld_rdy; void* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  task; int /*<<< orphan*/  wait_q; struct btmrvl_private* priv; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; TYPE_2__ main_thread; int /*<<< orphan*/  driver_lock; void* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  btmrvl_service_main_thread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct btmrvl_private *FUNC10(void *card)
{
	struct btmrvl_private *priv;

	priv = FUNC8(sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		FUNC1("Can not allocate priv");
		goto err_priv;
	}

	priv->adapter = FUNC8(sizeof(*priv->adapter), GFP_KERNEL);
	if (!priv->adapter) {
		FUNC1("Allocate buffer for btmrvl_adapter failed!");
		goto err_adapter;
	}

	FUNC4(priv);

	FUNC0("Starting kthread...");
	priv->main_thread.priv = priv;
	FUNC9(&priv->driver_lock);

	FUNC5(&priv->main_thread.wait_q);
	priv->main_thread.task = FUNC7(btmrvl_service_main_thread,
				&priv->main_thread, "btmrvl_main_service");
	if (FUNC2(priv->main_thread.task))
		goto err_thread;

	priv->btmrvl_dev.card = card;
	priv->btmrvl_dev.tx_dnld_rdy = true;

	return priv;

err_thread:
	FUNC3(priv);

err_adapter:
	FUNC6(priv);

err_priv:
	return NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct btmrvl_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_hs_wait_q; int /*<<< orphan*/  cmd_wait_q; int /*<<< orphan*/ * hw_regs; int /*<<< orphan*/  hw_regs_buf; int /*<<< orphan*/  ps_state; int /*<<< orphan*/  tx_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTSDIO_DMA_ALIGN ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PS_AWAKE ; 
 int /*<<< orphan*/  SDIO_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct btmrvl_private *priv)
{
	int buf_size;

	FUNC6(&priv->adapter->tx_queue);

	priv->adapter->ps_state = PS_AWAKE;

	buf_size = FUNC1(SDIO_BLOCK_SIZE, BTSDIO_DMA_ALIGN);
	priv->adapter->hw_regs_buf = FUNC5(buf_size, GFP_KERNEL);
	if (!priv->adapter->hw_regs_buf) {
		priv->adapter->hw_regs = NULL;
		FUNC3("Unable to allocate buffer for hw_regs.");
	} else {
		priv->adapter->hw_regs =
			(u8 *)FUNC0(priv->adapter->hw_regs_buf,
					 BTSDIO_DMA_ALIGN);
		FUNC2("hw_regs_buf=%p hw_regs=%p",
		       priv->adapter->hw_regs_buf, priv->adapter->hw_regs);
	}

	FUNC4(&priv->adapter->cmd_wait_q);
	FUNC4(&priv->adapter->event_hs_wait_q);
}
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
typedef  int /*<<< orphan*/  u32 ;
struct mtk_ref2usb_tx {int /*<<< orphan*/  base_addr; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF2USB_TX_EN ; 
 int /*<<< orphan*/  REF2USB_TX_LPF_EN ; 
 int /*<<< orphan*/  REF2USB_TX_OUT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_ref2usb_tx* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct mtk_ref2usb_tx *tx = FUNC1(hw);
	u32 val;

	val = FUNC0(tx->base_addr);

	val |= REF2USB_TX_EN;
	FUNC3(val, tx->base_addr);
	FUNC2(100);

	val |= REF2USB_TX_LPF_EN;
	FUNC3(val, tx->base_addr);

	val |= REF2USB_TX_OUT_EN;
	FUNC3(val, tx->base_addr);

	return 0;
}
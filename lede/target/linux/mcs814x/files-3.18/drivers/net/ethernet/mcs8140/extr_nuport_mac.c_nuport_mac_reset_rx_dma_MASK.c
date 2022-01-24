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
struct nuport_mac_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_DMA_RESET ; 
 int /*<<< orphan*/  RX_START_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nuport_mac_priv *priv)
{
	u32 reg;

	reg = FUNC0(RX_START_DMA);
	reg |= RX_DMA_RESET;
	FUNC1(reg, RX_START_DMA);
}
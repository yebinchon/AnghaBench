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

/* Variables and functions */
 int /*<<< orphan*/  IRDA_IO_BASE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(void)
{
	FUNC1(6);

	/*
	 * IR base address
	 */
	FUNC3(0x60, IRDA_IO_BASE);

	/*
	 * IRDA IRQ 6, active high, edge trigger
	 */
	FUNC2(0x70, 6);
	FUNC2(0x71, 0x02);

	/*
	 * RX DMA - ISA DMA 0
	 */
	FUNC2(0x74, 0x00);

	/*
	 * TX DMA - Disable Tx DMA
	 */
	FUNC2(0x75, 0x04);

	/*
	 * Append CRC, Enable bank selection
	 */
	FUNC2(0xf0, 0x03);

	/*
	 * Enable device
	 */
	FUNC0();
}
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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(int sb_base, int al_base, int irq, int dma)
{
	int i;

	FUNC0(7, 1);

	FUNC1("SoundBlaster base: ");
	FUNC0(0x61, sb_base & 255);
	i = FUNC2(0x203);

	FUNC0(0x60, sb_base >> 8);
	FUNC1("%02X%02X (%X),", FUNC2(0x203), i, sb_base);

	FUNC1(" irq: ");
	FUNC0(0x70, irq);
	FUNC1("%d (%d),", FUNC2(0x203), irq);

	FUNC1(" 8-bit DMA: ");
	FUNC0(0x74, dma);
	FUNC1("%d (%d)\n", FUNC2(0x203), dma);

	FUNC1("AdLib base: ");
	FUNC0(0x63, al_base & 255);
	i = FUNC2(0x203);

	FUNC0(0x62, al_base >> 8);
	FUNC1("%02X%02X (%X)\n", FUNC2(0x203), i, al_base);

	FUNC0(0x30, 1);
}
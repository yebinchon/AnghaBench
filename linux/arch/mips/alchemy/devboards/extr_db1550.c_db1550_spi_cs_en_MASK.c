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
struct au1550_spi_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCSR_BOARD ; 
 int /*<<< orphan*/  BCSR_BOARD_SPISEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct au1550_spi_info *spi, int cs, int pol)
{
	if (cs)
		FUNC0(BCSR_BOARD, 0, BCSR_BOARD_SPISEL);
	else
		FUNC0(BCSR_BOARD, BCSR_BOARD_SPISEL, 0);
}
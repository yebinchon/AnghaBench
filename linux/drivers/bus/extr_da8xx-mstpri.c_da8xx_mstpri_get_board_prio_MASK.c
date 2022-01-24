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
struct da8xx_mstpri_board_priorities {int /*<<< orphan*/  board; } ;

/* Variables and functions */
 int FUNC0 (struct da8xx_mstpri_board_priorities*) ; 
 struct da8xx_mstpri_board_priorities* da8xx_mstpri_board_confs ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct da8xx_mstpri_board_priorities *
FUNC2(void)
{
	const struct da8xx_mstpri_board_priorities *board_prio;
	int i;

	for (i = 0; i < FUNC0(da8xx_mstpri_board_confs); i++) {
		board_prio = &da8xx_mstpri_board_confs[i];

		if (FUNC1(board_prio->board))
			return board_prio;
	}

	return NULL;
}
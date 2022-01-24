#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ itemweightindex; scalar_t__ itemweightconfig; } ;
typedef  TYPE_1__ bot_goalstate_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(int goalstate)
{
	bot_goalstate_t *gs;

	gs = FUNC0(goalstate);
	if (!gs) return;
	if (gs->itemweightconfig) FUNC2(gs->itemweightconfig);
	if (gs->itemweightindex) FUNC1(gs->itemweightindex);
}
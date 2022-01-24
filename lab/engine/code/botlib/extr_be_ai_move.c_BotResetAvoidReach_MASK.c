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
struct TYPE_3__ {int /*<<< orphan*/  avoidreachtries; int /*<<< orphan*/  avoidreachtimes; int /*<<< orphan*/  avoidreach; } ;
typedef  TYPE_1__ bot_movestate_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int MAX_AVOIDREACH ; 

void FUNC2(int movestate)
{
	bot_movestate_t *ms;

	ms = FUNC0(movestate);
	if (!ms) return;
	FUNC1(ms->avoidreach, 0, MAX_AVOIDREACH * sizeof(int));
	FUNC1(ms->avoidreachtimes, 0, MAX_AVOIDREACH * sizeof(float));
	FUNC1(ms->avoidreachtries, 0, MAX_AVOIDREACH * sizeof(int));
}
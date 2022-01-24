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
typedef  int /*<<< orphan*/  weaponinfo_t ;
typedef  int /*<<< orphan*/  bot_weaponstate_t ;
struct TYPE_2__ {int /*<<< orphan*/ * weaponinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* weaponconfig ; 

void FUNC3(int weaponstate, int weapon, weaponinfo_t *weaponinfo)
{
	bot_weaponstate_t *ws;

	if (!FUNC0(weapon)) return;
	ws = FUNC1(weaponstate);
	if (!ws) return;
	if (!weaponconfig) return;
	FUNC2(weaponinfo, &weaponconfig->weaponinfo[weapon], sizeof(weaponinfo_t));
}
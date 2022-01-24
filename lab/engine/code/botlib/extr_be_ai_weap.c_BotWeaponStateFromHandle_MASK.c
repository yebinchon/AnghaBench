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
typedef  int /*<<< orphan*/  bot_weaponstate_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int) ;} ;

/* Variables and functions */
 int MAX_CLIENTS ; 
 int /*<<< orphan*/  PRT_FATAL ; 
 TYPE_1__ botimport ; 
 int /*<<< orphan*/ ** botweaponstates ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

bot_weaponstate_t *FUNC2(int handle)
{
	if (handle <= 0 || handle > MAX_CLIENTS)
	{
		botimport.Print(PRT_FATAL, "weapon state handle %d out of range\n", handle);
		return NULL;
	} //end if
	if (!botweaponstates[handle])
	{
		botimport.Print(PRT_FATAL, "invalid weapon state %d\n", handle);
		return NULL;
	} //end if
	return botweaponstates[handle];
}
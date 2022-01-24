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
struct omap_die_id {void* id_3; void* id_2; void* id_1; void* id_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_TAP_DIE_ID_0 ; 
 int /*<<< orphan*/  OMAP_TAP_DIE_ID_1 ; 
 int /*<<< orphan*/  OMAP_TAP_DIE_ID_2 ; 
 int /*<<< orphan*/  OMAP_TAP_DIE_ID_3 ; 
 int /*<<< orphan*/  OMAP_TAP_DIE_ID_44XX_0 ; 
 int /*<<< orphan*/  OMAP_TAP_DIE_ID_44XX_1 ; 
 int /*<<< orphan*/  OMAP_TAP_DIE_ID_44XX_2 ; 
 int /*<<< orphan*/  OMAP_TAP_DIE_ID_44XX_3 ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

void FUNC4(struct omap_die_id *odi)
{
	if (FUNC2() || FUNC3() || FUNC1()) {
		odi->id_0 = FUNC0(OMAP_TAP_DIE_ID_44XX_0);
		odi->id_1 = FUNC0(OMAP_TAP_DIE_ID_44XX_1);
		odi->id_2 = FUNC0(OMAP_TAP_DIE_ID_44XX_2);
		odi->id_3 = FUNC0(OMAP_TAP_DIE_ID_44XX_3);

		return;
	}
	odi->id_0 = FUNC0(OMAP_TAP_DIE_ID_0);
	odi->id_1 = FUNC0(OMAP_TAP_DIE_ID_1);
	odi->id_2 = FUNC0(OMAP_TAP_DIE_ID_2);
	odi->id_3 = FUNC0(OMAP_TAP_DIE_ID_3);
}
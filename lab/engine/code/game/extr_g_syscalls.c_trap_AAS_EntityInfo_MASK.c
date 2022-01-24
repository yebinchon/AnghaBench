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
 int /*<<< orphan*/  BOTLIB_AAS_ENTITY_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,void*) ; 

void FUNC1(int entnum, void /* struct aas_entityinfo_s */ *info) {
	FUNC0( BOTLIB_AAS_ENTITY_INFO, entnum, info );
}
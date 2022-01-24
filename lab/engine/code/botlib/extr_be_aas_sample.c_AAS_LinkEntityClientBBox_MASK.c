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
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  aas_link_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

aas_link_t *FUNC3(vec3_t absmins, vec3_t absmaxs, int entnum, int presencetype)
{
	vec3_t mins, maxs;
	vec3_t newabsmins, newabsmaxs;

	FUNC1(presencetype, mins, maxs);
	FUNC2(absmins, maxs, newabsmins);
	FUNC2(absmaxs, mins, newabsmaxs);
	//relink the entity
	return FUNC0(newabsmins, newabsmaxs, entnum);
}
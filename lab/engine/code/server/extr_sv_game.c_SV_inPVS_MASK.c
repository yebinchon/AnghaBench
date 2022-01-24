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
typedef  int /*<<< orphan*/  qboolean ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC5 (const vec3_t p1, const vec3_t p2)
{
	int		leafnum;
	int		cluster;
	int		area1, area2;
	byte	*mask;

	leafnum = FUNC4 (p1);
	cluster = FUNC3 (leafnum);
	area1 = FUNC2 (leafnum);
	mask = FUNC1 (cluster);

	leafnum = FUNC4 (p2);
	cluster = FUNC3 (leafnum);
	area2 = FUNC2 (leafnum);
	if ( mask && (!(mask[cluster>>3] & (1<<(cluster&7)) ) ) )
		return qfalse;
	if (!FUNC0 (area1, area2))
		return qfalse;		// a door blocks sight
	return qtrue;
}
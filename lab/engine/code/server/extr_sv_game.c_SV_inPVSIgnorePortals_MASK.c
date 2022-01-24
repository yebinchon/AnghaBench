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
 int* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC3( const vec3_t p1, const vec3_t p2)
{
	int		leafnum;
	int		cluster;
	byte	*mask;

	leafnum = FUNC2 (p1);
	cluster = FUNC1 (leafnum);
	mask = FUNC0 (cluster);

	leafnum = FUNC2 (p2);
	cluster = FUNC1 (leafnum);

	if ( mask && (!(mask[cluster>>3] & (1<<(cluster&7)) ) ) )
		return qfalse;

	return qtrue;
}
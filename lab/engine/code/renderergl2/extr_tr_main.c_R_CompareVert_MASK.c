#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* st; scalar_t__* xyz; } ;
typedef  TYPE_1__ srfVert_t ;
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 

qboolean FUNC1(srfVert_t * v1, srfVert_t * v2, qboolean checkST)
{
	int             i;

	for(i = 0; i < 3; i++)
	{
		if(FUNC0(v1->xyz[i] + 0.1) != FUNC0(v2->xyz[i] + 0.1))
		{
			return qfalse;
		}

		if(checkST && ((v1->st[0] != v2->st[0]) || (v1->st[1] != v2->st[1])))
		{
			return qfalse;
		}
	}

	return qtrue;
}
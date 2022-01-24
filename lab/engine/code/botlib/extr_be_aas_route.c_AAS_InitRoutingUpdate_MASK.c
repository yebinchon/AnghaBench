#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  aas_routingupdate_t ;
struct TYPE_4__ {int numclusters; int numportals; int /*<<< orphan*/ * portalupdate; int /*<<< orphan*/ * areaupdate; TYPE_1__* clusters; } ;
struct TYPE_3__ {int numreachabilityareas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__ aasworld ; 

void FUNC2(void)
{
	int i, maxreachabilityareas;

	//free routing update fields if already existing
	if (aasworld.areaupdate) FUNC0(aasworld.areaupdate);
	//
	maxreachabilityareas = 0;
	for (i = 0; i < aasworld.numclusters; i++)
	{
		if (aasworld.clusters[i].numreachabilityareas > maxreachabilityareas)
		{
			maxreachabilityareas = aasworld.clusters[i].numreachabilityareas;
		} //end if
	} //end for
	//allocate memory for the routing update fields
	aasworld.areaupdate = (aas_routingupdate_t *) FUNC1(
									maxreachabilityareas * sizeof(aas_routingupdate_t));
	//
	if (aasworld.portalupdate) FUNC0(aasworld.portalupdate);
	//allocate memory for the portal update fields
	aasworld.portalupdate = (aas_routingupdate_t *) FUNC1(
									(aasworld.numportals+1) * sizeof(aas_routingupdate_t));
}
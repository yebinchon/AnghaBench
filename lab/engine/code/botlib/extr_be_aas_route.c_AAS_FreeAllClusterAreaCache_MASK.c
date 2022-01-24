#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_1__ aas_routingcache_t ;
struct TYPE_7__ {int numareas; } ;
typedef  TYPE_2__ aas_cluster_t ;
struct TYPE_8__ {int numclusters; TYPE_1__*** clusterareacache; TYPE_2__* clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__***) ; 
 TYPE_3__ aasworld ; 

void FUNC2(void)
{
	int i, j;
	aas_routingcache_t *cache, *nextcache;
	aas_cluster_t *cluster;

	//free all cluster cache if existing
	if (!aasworld.clusterareacache) return;
	//free caches
	for (i = 0; i < aasworld.numclusters; i++)
	{
		cluster = &aasworld.clusters[i];
		for (j = 0; j < cluster->numareas; j++)
		{
			for (cache = aasworld.clusterareacache[i][j]; cache; cache = nextcache)
			{
				nextcache = cache->next;
				FUNC0(cache);
			} //end for
			aasworld.clusterareacache[i][j] = NULL;
		} //end for
	} //end for
	//free the cluster cache array
	FUNC1(aasworld.clusterareacache);
	aasworld.clusterareacache = NULL;
}
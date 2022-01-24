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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,float) ; 
 scalar_t__ FUNC1 (int,int) ; 

int FUNC2( vec3_t point, float epsilon, int numClusters, int *clusters ){
	int i, cluster;


	/* get cluster for point */
	cluster = FUNC0( point, epsilon );

	/* check if filtering is necessary */
	if ( cluster < 0 || numClusters <= 0 || clusters == NULL ) {
		return cluster;
	}

	/* filter */
	for ( i = 0; i < numClusters; i++ )
	{
		if ( cluster == clusters[ i ] || FUNC1( cluster, clusters[ i ] ) ) {
			return cluster;
		}
	}

	/* failed */
	return -1;
}
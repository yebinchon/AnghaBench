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
struct TYPE_6__ {int* edgeoptimizeindex; size_t numedges; size_t* vertexoptimizeindex; size_t numvertexes; int /*<<< orphan*/ * vertexes; TYPE_2__* edges; } ;
typedef  TYPE_1__ optimized_t ;
struct TYPE_7__ {size_t* v; } ;
typedef  TYPE_2__ aas_edge_t ;
struct TYPE_8__ {int /*<<< orphan*/ * vertexes; TYPE_2__* edges; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ aasworld ; 
 size_t FUNC2 (int) ; 

int FUNC3(optimized_t *optimized, int edgenum)
{
	int i, optedgenum;
	aas_edge_t *edge, *optedge;

	edge = &aasworld.edges[FUNC2(edgenum)];
	if (!FUNC0(edge)) return 0;

	optedgenum = optimized->edgeoptimizeindex[FUNC2(edgenum)];
	if (optedgenum)
	{
		//keep the edge reversed sign
		if (edgenum > 0) return optedgenum;
		else return -optedgenum;
	} //end if

	optedge = &optimized->edges[optimized->numedges];

	for (i = 0; i < 2; i++)
	{
		if (optimized->vertexoptimizeindex[edge->v[i]])
		{
			optedge->v[i] = optimized->vertexoptimizeindex[edge->v[i]];
		} //end if
		else
		{
			FUNC1(aasworld.vertexes[edge->v[i]], optimized->vertexes[optimized->numvertexes]);
			optedge->v[i] = optimized->numvertexes;
			optimized->vertexoptimizeindex[edge->v[i]] = optimized->numvertexes;
			optimized->numvertexes++;
		} //end else
	} //end for
	optimized->edgeoptimizeindex[FUNC2(edgenum)] = optimized->numedges;
	optedgenum = optimized->numedges;
	optimized->numedges++;
	//keep the edge reversed sign
	if (edgenum > 0) return optedgenum;
	else return -optedgenum;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_4__ {int numedges; int firstedge; } ;
typedef  TYPE_1__ aas_face_t ;
struct TYPE_5__ {size_t* v; } ;
typedef  TYPE_2__ aas_edge_t ;
struct TYPE_6__ {int /*<<< orphan*/ * vertexes; int /*<<< orphan*/ * edgeindex; TYPE_2__* edges; TYPE_1__* faces; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 TYPE_3__ aasworld ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(int facenum, vec3_t center)
{
	int i;
	float scale;
	aas_face_t *face;
	aas_edge_t *edge;

	face = &aasworld.faces[facenum];

	FUNC1(center);
	for (i = 0; i < face->numedges; i++)
	{
		edge = &aasworld.edges[FUNC3(aasworld.edgeindex[face->firstedge + i])];
		FUNC0(center, aasworld.vertexes[edge->v[0]], center);
		FUNC0(center, aasworld.vertexes[edge->v[1]], center);
	} //end for
	scale = 0.5 / face->numedges;
	FUNC2(center, scale, center);
}
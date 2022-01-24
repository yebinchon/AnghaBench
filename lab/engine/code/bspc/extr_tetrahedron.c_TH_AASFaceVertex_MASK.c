#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_6__ {int firstedge; } ;
typedef  TYPE_2__ aas_face_t ;
struct TYPE_7__ {int* edgeindex; TYPE_1__* edges; int /*<<< orphan*/ * vertexes; } ;
struct TYPE_5__ {size_t* v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ aasworld ; 
 size_t FUNC1 (int) ; 

void FUNC2(aas_face_t *face, int index, vec3_t vertex)
{
	int edgenum, side;

	edgenum = aasworld.edgeindex[face->firstedge + index];
	side = edgenum < 0;
	FUNC0(aasworld.vertexes[aasworld.edges[FUNC1(edgenum)].v[side]], vertex);
}
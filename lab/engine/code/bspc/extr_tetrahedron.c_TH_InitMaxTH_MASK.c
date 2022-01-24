#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  th_vertex_t ;
typedef  int /*<<< orphan*/  th_triangle_t ;
typedef  int /*<<< orphan*/  th_tetrahedron_t ;
typedef  int /*<<< orphan*/  th_plane_t ;
typedef  int /*<<< orphan*/  th_edge_t ;
struct TYPE_2__ {int /*<<< orphan*/  trianglehash; int /*<<< orphan*/  edgehash; int /*<<< orphan*/  planehash; int /*<<< orphan*/  vertexhash; int /*<<< orphan*/ * tetrahedrons; int /*<<< orphan*/ * triangles; int /*<<< orphan*/ * edges; int /*<<< orphan*/ * planes; int /*<<< orphan*/ * vertexes; } ;

/* Variables and functions */
 int EDGEHASH_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 int MAX_TH_EDGES ; 
 int MAX_TH_PLANES ; 
 int MAX_TH_TETRAHEDRONS ; 
 int MAX_TH_TRIANGLES ; 
 int MAX_TH_VERTEXES ; 
 int PLANEHASH_SIZE ; 
 int TRIANGLEHASH_SIZE ; 
 int VERTEXHASH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ thworld ; 

void FUNC2(void)
{
	//get memory for the tetrahedron data
	thworld.vertexes = (th_vertex_t *) FUNC0(MAX_TH_VERTEXES * sizeof(th_vertex_t));
	thworld.planes = (th_plane_t *) FUNC0(MAX_TH_PLANES * sizeof(th_plane_t));
	thworld.edges = (th_edge_t *) FUNC0(MAX_TH_EDGES * sizeof(th_edge_t));
	thworld.triangles = (th_triangle_t *) FUNC0(MAX_TH_TRIANGLES * sizeof(th_triangle_t));
	thworld.tetrahedrons = (th_tetrahedron_t *) FUNC0(MAX_TH_TETRAHEDRONS * sizeof(th_tetrahedron_t));
	//reset the hash tables
	FUNC1(thworld.vertexhash, 0, VERTEXHASH_SIZE * sizeof(th_vertex_t *));
	FUNC1(thworld.planehash, 0, PLANEHASH_SIZE * sizeof(th_plane_t *));
	FUNC1(thworld.edgehash, 0, EDGEHASH_SIZE * sizeof(th_edge_t *));
	FUNC1(thworld.trianglehash, 0, TRIANGLEHASH_SIZE * sizeof(th_triangle_t *));
}
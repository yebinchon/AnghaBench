#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ faceoptimizeindex; scalar_t__ edgeoptimizeindex; scalar_t__ vertexoptimizeindex; int /*<<< orphan*/  numareas; scalar_t__ areas; int /*<<< orphan*/  faceindexsize; scalar_t__ faceindex; int /*<<< orphan*/  numfaces; scalar_t__ faces; int /*<<< orphan*/  edgeindexsize; scalar_t__ edgeindex; int /*<<< orphan*/  numedges; scalar_t__ edges; int /*<<< orphan*/  numvertexes; scalar_t__ vertexes; } ;
typedef  TYPE_1__ optimized_t ;
struct TYPE_5__ {int /*<<< orphan*/  numareas; scalar_t__ areas; int /*<<< orphan*/  faceindexsize; scalar_t__ faceindex; int /*<<< orphan*/  numfaces; scalar_t__ faces; int /*<<< orphan*/  edgeindexsize; scalar_t__ edgeindex; int /*<<< orphan*/  numedges; scalar_t__ edges; int /*<<< orphan*/  numvertexes; scalar_t__ vertexes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_2__ aasworld ; 

void FUNC1(optimized_t *optimized)
{
	//store the optimized vertexes
	if (aasworld.vertexes) FUNC0(aasworld.vertexes);
	aasworld.vertexes = optimized->vertexes;
	aasworld.numvertexes = optimized->numvertexes;
	//store the optimized edges
	if (aasworld.edges) FUNC0(aasworld.edges);
	aasworld.edges = optimized->edges;
	aasworld.numedges = optimized->numedges;
	//store the optimized edge index
	if (aasworld.edgeindex) FUNC0(aasworld.edgeindex);
	aasworld.edgeindex = optimized->edgeindex;
	aasworld.edgeindexsize = optimized->edgeindexsize;
	//store the optimized faces
	if (aasworld.faces) FUNC0(aasworld.faces);
	aasworld.faces = optimized->faces;
	aasworld.numfaces = optimized->numfaces;
	//store the optimized face index
	if (aasworld.faceindex) FUNC0(aasworld.faceindex);
	aasworld.faceindex = optimized->faceindex;
	aasworld.faceindexsize = optimized->faceindexsize;
	//store the optimized areas
	if (aasworld.areas) FUNC0(aasworld.areas);
	aasworld.areas = optimized->areas;
	aasworld.numareas = optimized->numareas;
	//free optimize indexes
	FUNC0(optimized->vertexoptimizeindex);
	FUNC0(optimized->edgeoptimizeindex);
	FUNC0(optimized->faceoptimizeindex);
}
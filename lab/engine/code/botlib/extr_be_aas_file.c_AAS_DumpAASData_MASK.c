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
struct TYPE_2__ {void* savefile; void* initialized; void* loaded; scalar_t__ numclusters; int /*<<< orphan*/ * clusters; scalar_t__ portalindexsize; int /*<<< orphan*/ * portalindex; scalar_t__ numportals; int /*<<< orphan*/ * portals; int /*<<< orphan*/ * nodes; scalar_t__ numnodes; int /*<<< orphan*/ * reachability; scalar_t__ reachabilitysize; int /*<<< orphan*/ * areasettings; scalar_t__ numareasettings; int /*<<< orphan*/ * areas; scalar_t__ numareas; int /*<<< orphan*/ * faceindex; scalar_t__ faceindexsize; int /*<<< orphan*/ * faces; scalar_t__ numfaces; int /*<<< orphan*/ * edgeindex; scalar_t__ edgeindexsize; int /*<<< orphan*/ * edges; scalar_t__ numedges; int /*<<< orphan*/ * planes; scalar_t__ numplanes; int /*<<< orphan*/ * vertexes; scalar_t__ numvertexes; int /*<<< orphan*/ * bboxes; scalar_t__ numbboxes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ aasworld ; 
 void* qfalse ; 

void FUNC1(void)
{
	aasworld.numbboxes = 0;
	if (aasworld.bboxes) FUNC0(aasworld.bboxes);
	aasworld.bboxes = NULL;
	aasworld.numvertexes = 0;
	if (aasworld.vertexes) FUNC0(aasworld.vertexes);
	aasworld.vertexes = NULL;
	aasworld.numplanes = 0;
	if (aasworld.planes) FUNC0(aasworld.planes);
	aasworld.planes = NULL;
	aasworld.numedges = 0;
	if (aasworld.edges) FUNC0(aasworld.edges);
	aasworld.edges = NULL;
	aasworld.edgeindexsize = 0;
	if (aasworld.edgeindex) FUNC0(aasworld.edgeindex);
	aasworld.edgeindex = NULL;
	aasworld.numfaces = 0;
	if (aasworld.faces) FUNC0(aasworld.faces);
	aasworld.faces = NULL;
	aasworld.faceindexsize = 0;
	if (aasworld.faceindex) FUNC0(aasworld.faceindex);
	aasworld.faceindex = NULL;
	aasworld.numareas = 0;
	if (aasworld.areas) FUNC0(aasworld.areas);
	aasworld.areas = NULL;
	aasworld.numareasettings = 0;
	if (aasworld.areasettings) FUNC0(aasworld.areasettings);
	aasworld.areasettings = NULL;
	aasworld.reachabilitysize = 0;
	if (aasworld.reachability) FUNC0(aasworld.reachability);
	aasworld.reachability = NULL;
	aasworld.numnodes = 0;
	if (aasworld.nodes) FUNC0(aasworld.nodes);
	aasworld.nodes = NULL;
	aasworld.numportals = 0;
	if (aasworld.portals) FUNC0(aasworld.portals);
	aasworld.portals = NULL;
	aasworld.numportals = 0;
	if (aasworld.portalindex) FUNC0(aasworld.portalindex);
	aasworld.portalindex = NULL;
	aasworld.portalindexsize = 0;
	if (aasworld.clusters) FUNC0(aasworld.clusters);
	aasworld.clusters = NULL;
	aasworld.numclusters = 0;
	//
	aasworld.loaded = qfalse;
	aasworld.initialized = qfalse;
	aasworld.savefile = qfalse;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {void** clusterareanum; void* backcluster; void* frontcluster; void* areanum; } ;
struct TYPE_21__ {void** children; void* planenum; } ;
struct TYPE_20__ {int /*<<< orphan*/  traveltime; void* traveltype; void** end; void** start; void* edgenum; void* facenum; void* areanum; } ;
struct TYPE_19__ {void* firstreachablearea; void* numreachableareas; void* clusterareanum; void* cluster; void* presencetype; void* areaflags; void* contents; } ;
struct TYPE_18__ {void** center; void** maxs; void** mins; void* firstface; void* numfaces; void* areanum; } ;
struct TYPE_17__ {void* backarea; void* frontarea; void* firstedge; void* numedges; void* faceflags; void* planenum; } ;
struct TYPE_16__ {void** v; } ;
struct TYPE_15__ {void* type; void* dist; void** normal; } ;
struct TYPE_14__ {void** maxs; void** mins; void* flags; void* presencetype; } ;
struct TYPE_13__ {int numbboxes; int numvertexes; int numplanes; int numedges; int edgeindexsize; int numfaces; int faceindexsize; int numareas; int numareasettings; int reachabilitysize; int numnodes; int numportals; int portalindexsize; int numclusters; TYPE_10__* clusters; void** portalindex; TYPE_9__* portals; TYPE_8__* nodes; TYPE_7__* reachability; TYPE_6__* areasettings; TYPE_5__* areas; void** faceindex; TYPE_4__* faces; void** edgeindex; TYPE_3__* edges; TYPE_2__* planes; void*** vertexes; TYPE_1__* bboxes; } ;
struct TYPE_12__ {void* firstportal; void* numportals; void* numreachabilityareas; void* numareas; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_11__ aasworld ; 

void FUNC3(void)
{
	int i, j;
	//bounding boxes
	for (i = 0; i < aasworld.numbboxes; i++)
	{
		aasworld.bboxes[i].presencetype = FUNC1(aasworld.bboxes[i].presencetype);
		aasworld.bboxes[i].flags = FUNC1(aasworld.bboxes[i].flags);
		for (j = 0; j < 3; j++)
		{
			aasworld.bboxes[i].mins[j] = FUNC0(aasworld.bboxes[i].mins[j]);
			aasworld.bboxes[i].maxs[j] = FUNC0(aasworld.bboxes[i].maxs[j]);
		} //end for
	} //end for
	//vertexes
	for (i = 0; i < aasworld.numvertexes; i++)
	{
		for (j = 0; j < 3; j++)
			aasworld.vertexes[i][j] = FUNC0(aasworld.vertexes[i][j]);
	} //end for
	//planes
	for (i = 0; i < aasworld.numplanes; i++)
	{
		for (j = 0; j < 3; j++)
			aasworld.planes[i].normal[j] = FUNC0(aasworld.planes[i].normal[j]);
		aasworld.planes[i].dist = FUNC0(aasworld.planes[i].dist);
		aasworld.planes[i].type = FUNC1(aasworld.planes[i].type);
	} //end for
	//edges
	for (i = 0; i < aasworld.numedges; i++)
	{
		aasworld.edges[i].v[0] = FUNC1(aasworld.edges[i].v[0]);
		aasworld.edges[i].v[1] = FUNC1(aasworld.edges[i].v[1]);
	} //end for
	//edgeindex
	for (i = 0; i < aasworld.edgeindexsize; i++)
	{
		aasworld.edgeindex[i] = FUNC1(aasworld.edgeindex[i]);
	} //end for
	//faces
	for (i = 0; i < aasworld.numfaces; i++)
	{
		aasworld.faces[i].planenum = FUNC1(aasworld.faces[i].planenum);
		aasworld.faces[i].faceflags = FUNC1(aasworld.faces[i].faceflags);
		aasworld.faces[i].numedges = FUNC1(aasworld.faces[i].numedges);
		aasworld.faces[i].firstedge = FUNC1(aasworld.faces[i].firstedge);
		aasworld.faces[i].frontarea = FUNC1(aasworld.faces[i].frontarea);
		aasworld.faces[i].backarea = FUNC1(aasworld.faces[i].backarea);
	} //end for
	//face index
	for (i = 0; i < aasworld.faceindexsize; i++)
	{
		aasworld.faceindex[i] = FUNC1(aasworld.faceindex[i]);
	} //end for
	//convex areas
	for (i = 0; i < aasworld.numareas; i++)
	{
		aasworld.areas[i].areanum = FUNC1(aasworld.areas[i].areanum);
		aasworld.areas[i].numfaces = FUNC1(aasworld.areas[i].numfaces);
		aasworld.areas[i].firstface = FUNC1(aasworld.areas[i].firstface);
		for (j = 0; j < 3; j++)
		{
			aasworld.areas[i].mins[j] = FUNC0(aasworld.areas[i].mins[j]);
			aasworld.areas[i].maxs[j] = FUNC0(aasworld.areas[i].maxs[j]);
			aasworld.areas[i].center[j] = FUNC0(aasworld.areas[i].center[j]);
		} //end for
	} //end for
	//area settings
	for (i = 0; i < aasworld.numareasettings; i++)
	{
		aasworld.areasettings[i].contents = FUNC1(aasworld.areasettings[i].contents);
		aasworld.areasettings[i].areaflags = FUNC1(aasworld.areasettings[i].areaflags);
		aasworld.areasettings[i].presencetype = FUNC1(aasworld.areasettings[i].presencetype);
		aasworld.areasettings[i].cluster = FUNC1(aasworld.areasettings[i].cluster);
		aasworld.areasettings[i].clusterareanum = FUNC1(aasworld.areasettings[i].clusterareanum);
		aasworld.areasettings[i].numreachableareas = FUNC1(aasworld.areasettings[i].numreachableareas);
		aasworld.areasettings[i].firstreachablearea = FUNC1(aasworld.areasettings[i].firstreachablearea);
	} //end for
	//area reachability
	for (i = 0; i < aasworld.reachabilitysize; i++)
	{
		aasworld.reachability[i].areanum = FUNC1(aasworld.reachability[i].areanum);
		aasworld.reachability[i].facenum = FUNC1(aasworld.reachability[i].facenum);
		aasworld.reachability[i].edgenum = FUNC1(aasworld.reachability[i].edgenum);
		for (j = 0; j < 3; j++)
		{
			aasworld.reachability[i].start[j] = FUNC0(aasworld.reachability[i].start[j]);
			aasworld.reachability[i].end[j] = FUNC0(aasworld.reachability[i].end[j]);
		} //end for
		aasworld.reachability[i].traveltype = FUNC1(aasworld.reachability[i].traveltype);
		aasworld.reachability[i].traveltime = FUNC2(aasworld.reachability[i].traveltime);
	} //end for
	//nodes
	for (i = 0; i < aasworld.numnodes; i++)
	{
		aasworld.nodes[i].planenum = FUNC1(aasworld.nodes[i].planenum);
		aasworld.nodes[i].children[0] = FUNC1(aasworld.nodes[i].children[0]);
		aasworld.nodes[i].children[1] = FUNC1(aasworld.nodes[i].children[1]);
	} //end for
	//cluster portals
	for (i = 0; i < aasworld.numportals; i++)
	{
		aasworld.portals[i].areanum = FUNC1(aasworld.portals[i].areanum);
		aasworld.portals[i].frontcluster = FUNC1(aasworld.portals[i].frontcluster);
		aasworld.portals[i].backcluster = FUNC1(aasworld.portals[i].backcluster);
		aasworld.portals[i].clusterareanum[0] = FUNC1(aasworld.portals[i].clusterareanum[0]);
		aasworld.portals[i].clusterareanum[1] = FUNC1(aasworld.portals[i].clusterareanum[1]);
	} //end for
	//cluster portal index
	for (i = 0; i < aasworld.portalindexsize; i++)
	{
		aasworld.portalindex[i] = FUNC1(aasworld.portalindex[i]);
	} //end for
	//cluster
	for (i = 0; i < aasworld.numclusters; i++)
	{
		aasworld.clusters[i].numareas = FUNC1(aasworld.clusters[i].numareas);
		aasworld.clusters[i].numreachabilityareas = FUNC1(aasworld.clusters[i].numreachabilityareas);
		aasworld.clusters[i].numportals = FUNC1(aasworld.clusters[i].numportals);
		aasworld.clusters[i].firstportal = FUNC1(aasworld.clusters[i].firstportal);
	} //end for
}
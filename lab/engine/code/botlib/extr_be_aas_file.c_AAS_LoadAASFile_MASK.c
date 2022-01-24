#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fileHandle_t ;
typedef  int /*<<< orphan*/  aas_vertex_t ;
typedef  int /*<<< orphan*/  aas_reachability_t ;
typedef  int /*<<< orphan*/  aas_portalindex_t ;
typedef  int /*<<< orphan*/  aas_portal_t ;
typedef  int /*<<< orphan*/  aas_plane_t ;
typedef  int /*<<< orphan*/  aas_node_t ;
struct TYPE_7__ {scalar_t__ ident; scalar_t__ version; scalar_t__ bspchecksum; TYPE_1__* lumps; } ;
typedef  TYPE_2__ aas_header_t ;
typedef  int /*<<< orphan*/  aas_faceindex_t ;
typedef  int /*<<< orphan*/  aas_face_t ;
typedef  int /*<<< orphan*/  aas_edgeindex_t ;
typedef  int /*<<< orphan*/  aas_edge_t ;
typedef  int /*<<< orphan*/  aas_cluster_t ;
typedef  int /*<<< orphan*/  aas_bbox_t ;
typedef  int /*<<< orphan*/  aas_areasettings_t ;
typedef  int /*<<< orphan*/  aas_area_t ;
struct TYPE_9__ {scalar_t__ bspchecksum; int numbboxes; int numvertexes; int numplanes; int numedges; int edgeindexsize; int numfaces; int faceindexsize; int numareas; int numareasettings; int reachabilitysize; int numnodes; int numportals; int portalindexsize; int numclusters; int /*<<< orphan*/  loaded; int /*<<< orphan*/ * clusters; int /*<<< orphan*/ * portalindex; int /*<<< orphan*/ * portals; int /*<<< orphan*/ * nodes; int /*<<< orphan*/ * reachability; int /*<<< orphan*/ * areasettings; int /*<<< orphan*/ * areas; int /*<<< orphan*/ * faceindex; int /*<<< orphan*/ * faces; int /*<<< orphan*/ * edgeindex; int /*<<< orphan*/ * edges; int /*<<< orphan*/ * planes; int /*<<< orphan*/ * vertexes; int /*<<< orphan*/ * bboxes; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* FS_FCloseFile ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* FS_Read ) (TYPE_2__*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* FS_FOpenFile ) (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,char*) ;} ;
struct TYPE_6__ {scalar_t__ fileofs; scalar_t__ filelen; } ;

/* Variables and functions */
 scalar_t__ AASID ; 
 size_t AASLUMP_AREAS ; 
 size_t AASLUMP_AREASETTINGS ; 
 size_t AASLUMP_BBOXES ; 
 size_t AASLUMP_CLUSTERS ; 
 size_t AASLUMP_EDGEINDEX ; 
 size_t AASLUMP_EDGES ; 
 size_t AASLUMP_FACEINDEX ; 
 size_t AASLUMP_FACES ; 
 size_t AASLUMP_NODES ; 
 size_t AASLUMP_PLANES ; 
 size_t AASLUMP_PORTALINDEX ; 
 size_t AASLUMP_PORTALS ; 
 size_t AASLUMP_REACHABILITY ; 
 size_t AASLUMP_VERTEXES ; 
 scalar_t__ AASVERSION ; 
 scalar_t__ AASVERSION_OLD ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int BLERR_CANNOTOPENAASFILE ; 
 int BLERR_CANNOTREADAASLUMP ; 
 int BLERR_NOERROR ; 
 int BLERR_WRONGAASFILEID ; 
 int BLERR_WRONGAASFILEVERSION ; 
 int /*<<< orphan*/  FS_READ ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 TYPE_5__ aasworld ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__ botimport ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(char *filename)
{
	fileHandle_t fp;
	aas_header_t header;
	int offset, length, lastoffset;

	botimport.Print(PRT_MESSAGE, "trying to load %s\n", filename);
	//dump current loaded aas file
	FUNC1();
	//open the file
	botimport.FS_FOpenFile( filename, &fp, FS_READ );
	if (!fp)
	{
		FUNC2("can't open %s\n", filename);
		return BLERR_CANNOTOPENAASFILE;
	} //end if
	//read the header
	botimport.FS_Read(&header, sizeof(aas_header_t), fp );
	lastoffset = sizeof(aas_header_t);
	//check header identification
	header.ident = FUNC7(header.ident);
	if (header.ident != AASID)
	{
		FUNC2("%s is not an AAS file\n", filename);
		botimport.FS_FCloseFile(fp);
		return BLERR_WRONGAASFILEID;
	} //end if
	//check the version
	header.version = FUNC7(header.version);
	//
	if (header.version != AASVERSION_OLD && header.version != AASVERSION)
	{
		FUNC2("aas file %s is version %i, not %i\n", filename, header.version, AASVERSION);
		botimport.FS_FCloseFile(fp);
		return BLERR_WRONGAASFILEVERSION;
	} //end if
	//
	if (header.version == AASVERSION)
	{
		FUNC0((unsigned char *) &header + 8, sizeof(aas_header_t) - 8);
	} //end if
	//
	aasworld.bspchecksum = FUNC8(FUNC6( "sv_mapChecksum"));
	if (FUNC7(header.bspchecksum) != aasworld.bspchecksum)
	{
		FUNC2("aas file %s is out of date\n", filename);
		botimport.FS_FCloseFile(fp);
		return BLERR_WRONGAASFILEVERSION;
	} //end if
	//load the lumps:
	//bounding boxes
	offset = FUNC7(header.lumps[AASLUMP_BBOXES].fileofs);
	length = FUNC7(header.lumps[AASLUMP_BBOXES].filelen);
	aasworld.bboxes = (aas_bbox_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_bbox_t));
	aasworld.numbboxes = length / sizeof(aas_bbox_t);
	if (aasworld.numbboxes && !aasworld.bboxes) return BLERR_CANNOTREADAASLUMP;
	//vertexes
	offset = FUNC7(header.lumps[AASLUMP_VERTEXES].fileofs);
	length = FUNC7(header.lumps[AASLUMP_VERTEXES].filelen);
	aasworld.vertexes = (aas_vertex_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_vertex_t));
	aasworld.numvertexes = length / sizeof(aas_vertex_t);
	if (aasworld.numvertexes && !aasworld.vertexes) return BLERR_CANNOTREADAASLUMP;
	//planes
	offset = FUNC7(header.lumps[AASLUMP_PLANES].fileofs);
	length = FUNC7(header.lumps[AASLUMP_PLANES].filelen);
	aasworld.planes = (aas_plane_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_plane_t));
	aasworld.numplanes = length / sizeof(aas_plane_t);
	if (aasworld.numplanes && !aasworld.planes) return BLERR_CANNOTREADAASLUMP;
	//edges
	offset = FUNC7(header.lumps[AASLUMP_EDGES].fileofs);
	length = FUNC7(header.lumps[AASLUMP_EDGES].filelen);
	aasworld.edges = (aas_edge_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_edge_t));
	aasworld.numedges = length / sizeof(aas_edge_t);
	if (aasworld.numedges && !aasworld.edges) return BLERR_CANNOTREADAASLUMP;
	//edgeindex
	offset = FUNC7(header.lumps[AASLUMP_EDGEINDEX].fileofs);
	length = FUNC7(header.lumps[AASLUMP_EDGEINDEX].filelen);
	aasworld.edgeindex = (aas_edgeindex_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_edgeindex_t));
	aasworld.edgeindexsize = length / sizeof(aas_edgeindex_t);
	if (aasworld.edgeindexsize && !aasworld.edgeindex) return BLERR_CANNOTREADAASLUMP;
	//faces
	offset = FUNC7(header.lumps[AASLUMP_FACES].fileofs);
	length = FUNC7(header.lumps[AASLUMP_FACES].filelen);
	aasworld.faces = (aas_face_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_face_t));
	aasworld.numfaces = length / sizeof(aas_face_t);
	if (aasworld.numfaces && !aasworld.faces) return BLERR_CANNOTREADAASLUMP;
	//faceindex
	offset = FUNC7(header.lumps[AASLUMP_FACEINDEX].fileofs);
	length = FUNC7(header.lumps[AASLUMP_FACEINDEX].filelen);
	aasworld.faceindex = (aas_faceindex_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_faceindex_t));
	aasworld.faceindexsize = length / sizeof(aas_faceindex_t);
	if (aasworld.faceindexsize && !aasworld.faceindex) return BLERR_CANNOTREADAASLUMP;
	//convex areas
	offset = FUNC7(header.lumps[AASLUMP_AREAS].fileofs);
	length = FUNC7(header.lumps[AASLUMP_AREAS].filelen);
	aasworld.areas = (aas_area_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_area_t));
	aasworld.numareas = length / sizeof(aas_area_t);
	if (aasworld.numareas && !aasworld.areas) return BLERR_CANNOTREADAASLUMP;
	//area settings
	offset = FUNC7(header.lumps[AASLUMP_AREASETTINGS].fileofs);
	length = FUNC7(header.lumps[AASLUMP_AREASETTINGS].filelen);
	aasworld.areasettings = (aas_areasettings_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_areasettings_t));
	aasworld.numareasettings = length / sizeof(aas_areasettings_t);
	if (aasworld.numareasettings && !aasworld.areasettings) return BLERR_CANNOTREADAASLUMP;
	//reachability list
	offset = FUNC7(header.lumps[AASLUMP_REACHABILITY].fileofs);
	length = FUNC7(header.lumps[AASLUMP_REACHABILITY].filelen);
	aasworld.reachability = (aas_reachability_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_reachability_t));
	aasworld.reachabilitysize = length / sizeof(aas_reachability_t);
	if (aasworld.reachabilitysize && !aasworld.reachability) return BLERR_CANNOTREADAASLUMP;
	//nodes
	offset = FUNC7(header.lumps[AASLUMP_NODES].fileofs);
	length = FUNC7(header.lumps[AASLUMP_NODES].filelen);
	aasworld.nodes = (aas_node_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_node_t));
	aasworld.numnodes = length / sizeof(aas_node_t);
	if (aasworld.numnodes && !aasworld.nodes) return BLERR_CANNOTREADAASLUMP;
	//cluster portals
	offset = FUNC7(header.lumps[AASLUMP_PORTALS].fileofs);
	length = FUNC7(header.lumps[AASLUMP_PORTALS].filelen);
	aasworld.portals = (aas_portal_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_portal_t));
	aasworld.numportals = length / sizeof(aas_portal_t);
	if (aasworld.numportals && !aasworld.portals) return BLERR_CANNOTREADAASLUMP;
	//cluster portal index
	offset = FUNC7(header.lumps[AASLUMP_PORTALINDEX].fileofs);
	length = FUNC7(header.lumps[AASLUMP_PORTALINDEX].filelen);
	aasworld.portalindex = (aas_portalindex_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_portalindex_t));
	aasworld.portalindexsize = length / sizeof(aas_portalindex_t);
	if (aasworld.portalindexsize && !aasworld.portalindex) return BLERR_CANNOTREADAASLUMP;
	//clusters
	offset = FUNC7(header.lumps[AASLUMP_CLUSTERS].fileofs);
	length = FUNC7(header.lumps[AASLUMP_CLUSTERS].filelen);
	aasworld.clusters = (aas_cluster_t *) FUNC4(fp, offset, length, &lastoffset, sizeof(aas_cluster_t));
	aasworld.numclusters = length / sizeof(aas_cluster_t);
	if (aasworld.numclusters && !aasworld.clusters) return BLERR_CANNOTREADAASLUMP;
	//swap everything
	FUNC5();
	//aas file is loaded
	aasworld.loaded = qtrue;
	//close the file
	botimport.FS_FCloseFile(fp);
	//
#ifdef AASFILEDEBUG
	AAS_FileInfo();
#endif //AASFILEDEBUG
	//
	return BLERR_NOERROR;
}
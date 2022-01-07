
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int aas_vertex_t ;
typedef int aas_reachability_t ;
typedef int aas_portalindex_t ;
typedef int aas_portal_t ;
typedef int aas_plane_t ;
typedef int aas_node_t ;
typedef int aas_faceindex_t ;
typedef int aas_face_t ;
typedef int aas_edgeindex_t ;
typedef int aas_edge_t ;
typedef int aas_cluster_t ;
typedef int aas_bbox_t ;
typedef int aas_areasettings_t ;
typedef int aas_area_t ;
struct TYPE_4__ {int * clusters; scalar_t__ numclusters; int * portalindex; scalar_t__ portalindexsize; int * portals; scalar_t__ numportals; int * nodes; scalar_t__ numnodes; int * reachability; scalar_t__ reachabilitysize; int * areasettings; scalar_t__ numareasettings; int * areas; scalar_t__ numareas; int * faceindex; scalar_t__ faceindexsize; int * faces; scalar_t__ numfaces; int * edgeindex; scalar_t__ edgeindexsize; int * edges; scalar_t__ numedges; int * planes; scalar_t__ numplanes; int * vertexes; scalar_t__ numvertexes; int * bboxes; scalar_t__ numbboxes; } ;
struct TYPE_3__ {int max_bboxes; int max_vertexes; int max_planes; int max_edges; int max_edgeindexsize; int max_faces; int max_faceindexsize; int max_areas; int max_areasettings; int max_reachabilitysize; int max_nodes; int max_portals; int max_portalindexsize; int max_clusters; } ;


 int AAS_InitMaxAAS () ;
 int EDGE_HASH_SIZE ;
 scalar_t__ GetClearedMemory (int) ;
 int Log_Print (char*) ;
 int PLANE_HASH_SIZE ;
 int PrintMemorySize (int) ;
 int VERTEX_HASH_SIZE ;
 int* aas_edgechain ;
 int* aas_hashedges ;
 int* aas_hashplanes ;
 int* aas_hashverts ;
 int* aas_planechain ;
 int* aas_vertexchain ;
 TYPE_2__ aasworld ;
 int allocatedaasmem ;
 TYPE_1__ max_aas ;

void AAS_AllocMaxAAS(void)
{
 int i;

 AAS_InitMaxAAS();

 aasworld.numbboxes = 0;
 aasworld.bboxes = (aas_bbox_t *) GetClearedMemory(max_aas.max_bboxes * sizeof(aas_bbox_t));
 allocatedaasmem += max_aas.max_bboxes * sizeof(aas_bbox_t);

 aasworld.numvertexes = 0;
 aasworld.vertexes = (aas_vertex_t *) GetClearedMemory(max_aas.max_vertexes * sizeof(aas_vertex_t));
 allocatedaasmem += max_aas.max_vertexes * sizeof(aas_vertex_t);

 aasworld.numplanes = 0;
 aasworld.planes = (aas_plane_t *) GetClearedMemory(max_aas.max_planes * sizeof(aas_plane_t));
 allocatedaasmem += max_aas.max_planes * sizeof(aas_plane_t);

 aasworld.numedges = 0;
 aasworld.edges = (aas_edge_t *) GetClearedMemory(max_aas.max_edges * sizeof(aas_edge_t));
 allocatedaasmem += max_aas.max_edges * sizeof(aas_edge_t);

 aasworld.edgeindexsize = 0;
 aasworld.edgeindex = (aas_edgeindex_t *) GetClearedMemory(max_aas.max_edgeindexsize * sizeof(aas_edgeindex_t));
 allocatedaasmem += max_aas.max_edgeindexsize * sizeof(aas_edgeindex_t);

 aasworld.numfaces = 0;
 aasworld.faces = (aas_face_t *) GetClearedMemory(max_aas.max_faces * sizeof(aas_face_t));
 allocatedaasmem += max_aas.max_faces * sizeof(aas_face_t);

 aasworld.faceindexsize = 0;
 aasworld.faceindex = (aas_faceindex_t *) GetClearedMemory(max_aas.max_faceindexsize * sizeof(aas_faceindex_t));
 allocatedaasmem += max_aas.max_faceindexsize * sizeof(aas_faceindex_t);

 aasworld.numareas = 0;
 aasworld.areas = (aas_area_t *) GetClearedMemory(max_aas.max_areas * sizeof(aas_area_t));
 allocatedaasmem += max_aas.max_areas * sizeof(aas_area_t);

 aasworld.numareasettings = 0;
 aasworld.areasettings = (aas_areasettings_t *) GetClearedMemory(max_aas.max_areasettings * sizeof(aas_areasettings_t));
 allocatedaasmem += max_aas.max_areasettings * sizeof(aas_areasettings_t);

 aasworld.reachabilitysize = 0;
 aasworld.reachability = (aas_reachability_t *) GetClearedMemory(max_aas.max_reachabilitysize * sizeof(aas_reachability_t));
 allocatedaasmem += max_aas.max_reachabilitysize * sizeof(aas_reachability_t);

 aasworld.numnodes = 0;
 aasworld.nodes = (aas_node_t *) GetClearedMemory(max_aas.max_nodes * sizeof(aas_node_t));
 allocatedaasmem += max_aas.max_nodes * sizeof(aas_node_t);

 aasworld.numportals = 0;
 aasworld.portals = (aas_portal_t *) GetClearedMemory(max_aas.max_portals * sizeof(aas_portal_t));
 allocatedaasmem += max_aas.max_portals * sizeof(aas_portal_t);

 aasworld.portalindexsize = 0;
 aasworld.portalindex = (aas_portalindex_t *) GetClearedMemory(max_aas.max_portalindexsize * sizeof(aas_portalindex_t));
 allocatedaasmem += max_aas.max_portalindexsize * sizeof(aas_portalindex_t);

 aasworld.numclusters = 0;
 aasworld.clusters = (aas_cluster_t *) GetClearedMemory(max_aas.max_clusters * sizeof(aas_cluster_t));
 allocatedaasmem += max_aas.max_clusters * sizeof(aas_cluster_t);

 Log_Print("allocated ");
 PrintMemorySize(allocatedaasmem);
 Log_Print(" of AAS memory\n");

 aas_vertexchain = (int *) GetClearedMemory(max_aas.max_vertexes * sizeof(int));
 aas_planechain = (int *) GetClearedMemory(max_aas.max_planes * sizeof(int));
 aas_edgechain = (int *) GetClearedMemory(max_aas.max_edges * sizeof(int));

 for (i = 0; i < max_aas.max_vertexes; i++) aas_vertexchain[i] = -1;
 for (i = 0; i < VERTEX_HASH_SIZE * VERTEX_HASH_SIZE; i++) aas_hashverts[i] = -1;

 for (i = 0; i < max_aas.max_planes; i++) aas_planechain[i] = -1;
 for (i = 0; i < PLANE_HASH_SIZE; i++) aas_hashplanes[i] = -1;

 for (i = 0; i < max_aas.max_edges; i++) aas_edgechain[i] = -1;
 for (i = 0; i < EDGE_HASH_SIZE; i++) aas_hashedges[i] = -1;
}

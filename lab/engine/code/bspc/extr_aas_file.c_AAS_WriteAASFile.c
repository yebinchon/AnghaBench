
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
typedef int aas_vertex_t ;
typedef int aas_reachability_t ;
typedef int aas_portalindex_t ;
typedef int aas_portal_t ;
typedef int aas_plane_t ;
typedef int aas_node_t ;
struct TYPE_6__ {void* bspchecksum; void* version; void* ident; } ;
typedef TYPE_1__ aas_header_t ;
typedef int aas_faceindex_t ;
typedef int aas_face_t ;
typedef int aas_edgeindex_t ;
typedef int aas_edge_t ;
typedef int aas_cluster_t ;
typedef int aas_bbox_t ;
typedef int aas_areasettings_t ;
typedef int aas_area_t ;
struct TYPE_7__ {int numbboxes; int numvertexes; int numplanes; int numedges; int edgeindexsize; int numfaces; int faceindexsize; int numareas; int numareasettings; int reachabilitysize; int numnodes; int numportals; int portalindexsize; int numclusters; int clusters; int portalindex; int portals; int nodes; int reachability; int areasettings; int areas; int faceindex; int faces; int edgeindex; int edges; int planes; int vertexes; int bboxes; int bspchecksum; } ;
typedef int FILE ;


 int AASID ;
 int AASLUMP_AREAS ;
 int AASLUMP_AREASETTINGS ;
 int AASLUMP_BBOXES ;
 int AASLUMP_CLUSTERS ;
 int AASLUMP_EDGEINDEX ;
 int AASLUMP_EDGES ;
 int AASLUMP_FACEINDEX ;
 int AASLUMP_FACES ;
 int AASLUMP_NODES ;
 int AASLUMP_PLANES ;
 int AASLUMP_PORTALINDEX ;
 int AASLUMP_PORTALS ;
 int AASLUMP_REACHABILITY ;
 int AASLUMP_VERTEXES ;
 int AASVERSION ;
 int AAS_DData (unsigned char*,int) ;
 int AAS_ShowTotals () ;
 int AAS_SwapAASData () ;
 int AAS_WriteAASLump (int *,TYPE_1__*,int ,int ,int) ;
 void* LittleLong (int ) ;
 int Log_Print (char*,char*) ;
 int SEEK_SET ;
 TYPE_4__ aasworld ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fseek (int *,int ,int ) ;
 int fwrite (TYPE_1__*,int,int,int *) ;
 int memset (TYPE_1__*,int ,int) ;

qboolean AAS_WriteAASFile(char *filename)
{
 aas_header_t header;
 FILE *fp;

 Log_Print("writing %s\n", filename);
 AAS_ShowTotals();

 AAS_SwapAASData();

 memset(&header, 0, sizeof(aas_header_t));
 header.ident = LittleLong(AASID);
 header.version = LittleLong(AASVERSION);
 header.bspchecksum = LittleLong(aasworld.bspchecksum);

 fp = fopen(filename, "wb");
 if (!fp)
 {
  Log_Print("error opening %s\n", filename);
  return 0;
 }

 if (fwrite(&header, sizeof(aas_header_t), 1, fp) < 1)
 {
  fclose(fp);
  return 0;
 }

 if (!AAS_WriteAASLump(fp, &header, AASLUMP_BBOXES, aasworld.bboxes,
  aasworld.numbboxes * sizeof(aas_bbox_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_VERTEXES, aasworld.vertexes,
  aasworld.numvertexes * sizeof(aas_vertex_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_PLANES, aasworld.planes,
  aasworld.numplanes * sizeof(aas_plane_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_EDGES, aasworld.edges,
  aasworld.numedges * sizeof(aas_edge_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_EDGEINDEX, aasworld.edgeindex,
  aasworld.edgeindexsize * sizeof(aas_edgeindex_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_FACES, aasworld.faces,
  aasworld.numfaces * sizeof(aas_face_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_FACEINDEX, aasworld.faceindex,
  aasworld.faceindexsize * sizeof(aas_faceindex_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_AREAS, aasworld.areas,
  aasworld.numareas * sizeof(aas_area_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_AREASETTINGS, aasworld.areasettings,
  aasworld.numareasettings * sizeof(aas_areasettings_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_REACHABILITY, aasworld.reachability,
  aasworld.reachabilitysize * sizeof(aas_reachability_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_NODES, aasworld.nodes,
  aasworld.numnodes * sizeof(aas_node_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_PORTALS, aasworld.portals,
  aasworld.numportals * sizeof(aas_portal_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_PORTALINDEX, aasworld.portalindex,
  aasworld.portalindexsize * sizeof(aas_portalindex_t))) return 0;
 if (!AAS_WriteAASLump(fp, &header, AASLUMP_CLUSTERS, aasworld.clusters,
  aasworld.numclusters * sizeof(aas_cluster_t))) return 0;

 fseek(fp, 0, SEEK_SET);
 AAS_DData((unsigned char *) &header + 8, sizeof(aas_header_t) - 8);
 if (fwrite(&header, sizeof(aas_header_t), 1, fp) < 1)
 {
  fclose(fp);
  return 0;
 }

 fclose(fp);
 return 1;
}

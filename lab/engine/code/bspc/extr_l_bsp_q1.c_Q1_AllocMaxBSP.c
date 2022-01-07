
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int q1_texinfo_t ;
typedef int q1_dvertex_t ;
typedef int q1_dplane_t ;
typedef int q1_dnode_t ;
typedef int q1_dmodel_t ;
typedef int q1_dleaf_t ;
typedef int q1_dface_t ;
typedef int q1_dedge_t ;
typedef int q1_dclipnode_t ;
typedef int byte ;


 scalar_t__ GetMemory (int) ;
 int Log_Print (char*) ;
 int PrintMemorySize (int) ;
 int Q1_MAX_MAP_CLIPNODES ;
 int Q1_MAX_MAP_EDGES ;
 int Q1_MAX_MAP_ENTSTRING ;
 int Q1_MAX_MAP_FACES ;
 int Q1_MAX_MAP_LEAFS ;
 int Q1_MAX_MAP_LIGHTING ;
 int Q1_MAX_MAP_MARKSURFACES ;
 int Q1_MAX_MAP_MIPTEX ;
 int Q1_MAX_MAP_MODELS ;
 int Q1_MAX_MAP_NODES ;
 int Q1_MAX_MAP_PLANES ;
 int Q1_MAX_MAP_SURFEDGES ;
 int Q1_MAX_MAP_TEXINFO ;
 int Q1_MAX_MAP_VERTS ;
 int Q1_MAX_MAP_VISIBILITY ;
 int q1_allocatedbspmem ;
 int * q1_dclipnodes ;
 int * q1_dedges ;
 char* q1_dentdata ;
 int * q1_dfaces ;
 int * q1_dleafs ;
 int * q1_dlightdata ;
 unsigned short* q1_dmarksurfaces ;
 int * q1_dmodels ;
 int * q1_dnodes ;
 int * q1_dplanes ;
 int* q1_dsurfedges ;
 int * q1_dtexdata ;
 int * q1_dvertexes ;
 int * q1_dvisdata ;
 scalar_t__ q1_entdatasize ;
 scalar_t__ q1_lightdatasize ;
 scalar_t__ q1_numclipnodes ;
 scalar_t__ q1_numedges ;
 scalar_t__ q1_numfaces ;
 scalar_t__ q1_numleafs ;
 scalar_t__ q1_nummarksurfaces ;
 scalar_t__ q1_nummodels ;
 scalar_t__ q1_numnodes ;
 scalar_t__ q1_numplanes ;
 scalar_t__ q1_numsurfedges ;
 scalar_t__ q1_numtexinfo ;
 scalar_t__ q1_numvertexes ;
 scalar_t__ q1_texdatasize ;
 int * q1_texinfo ;
 scalar_t__ q1_visdatasize ;

void Q1_AllocMaxBSP(void)
{

 q1_nummodels = 0;
 q1_dmodels = (q1_dmodel_t *) GetMemory(Q1_MAX_MAP_MODELS * sizeof(q1_dmodel_t));
 q1_allocatedbspmem = Q1_MAX_MAP_MODELS * sizeof(q1_dmodel_t);

 q1_visdatasize = 0;
 q1_dvisdata = (byte *) GetMemory(Q1_MAX_MAP_VISIBILITY * sizeof(byte));
 q1_allocatedbspmem += Q1_MAX_MAP_VISIBILITY * sizeof(byte);

 q1_lightdatasize = 0;
 q1_dlightdata = (byte *) GetMemory(Q1_MAX_MAP_LIGHTING * sizeof(byte));
 q1_allocatedbspmem += Q1_MAX_MAP_LIGHTING * sizeof(byte);

 q1_texdatasize = 0;
 q1_dtexdata = (byte *) GetMemory(Q1_MAX_MAP_MIPTEX * sizeof(byte));
 q1_allocatedbspmem += Q1_MAX_MAP_MIPTEX * sizeof(byte);

 q1_entdatasize = 0;
 q1_dentdata = (char *) GetMemory(Q1_MAX_MAP_ENTSTRING * sizeof(char));
 q1_allocatedbspmem += Q1_MAX_MAP_ENTSTRING * sizeof(char);

 q1_numleafs = 0;
 q1_dleafs = (q1_dleaf_t *) GetMemory(Q1_MAX_MAP_LEAFS * sizeof(q1_dleaf_t));
 q1_allocatedbspmem += Q1_MAX_MAP_LEAFS * sizeof(q1_dleaf_t);

 q1_numplanes = 0;
 q1_dplanes = (q1_dplane_t *) GetMemory(Q1_MAX_MAP_PLANES * sizeof(q1_dplane_t));
 q1_allocatedbspmem += Q1_MAX_MAP_PLANES * sizeof(q1_dplane_t);

 q1_numvertexes = 0;
 q1_dvertexes = (q1_dvertex_t *) GetMemory(Q1_MAX_MAP_VERTS * sizeof(q1_dvertex_t));
 q1_allocatedbspmem += Q1_MAX_MAP_VERTS * sizeof(q1_dvertex_t);

 q1_numnodes = 0;
 q1_dnodes = (q1_dnode_t *) GetMemory(Q1_MAX_MAP_NODES * sizeof(q1_dnode_t));
 q1_allocatedbspmem += Q1_MAX_MAP_NODES * sizeof(q1_dnode_t);

 q1_numtexinfo = 0;
 q1_texinfo = (q1_texinfo_t *) GetMemory(Q1_MAX_MAP_TEXINFO * sizeof(q1_texinfo_t));
 q1_allocatedbspmem += Q1_MAX_MAP_TEXINFO * sizeof(q1_texinfo_t);

 q1_numfaces = 0;
 q1_dfaces = (q1_dface_t *) GetMemory(Q1_MAX_MAP_FACES * sizeof(q1_dface_t));
 q1_allocatedbspmem += Q1_MAX_MAP_FACES * sizeof(q1_dface_t);

 q1_numclipnodes = 0;
 q1_dclipnodes = (q1_dclipnode_t *) GetMemory(Q1_MAX_MAP_CLIPNODES * sizeof(q1_dclipnode_t));
 q1_allocatedbspmem += Q1_MAX_MAP_CLIPNODES * sizeof(q1_dclipnode_t);

 q1_numedges = 0;
 q1_dedges = (q1_dedge_t *) GetMemory(Q1_MAX_MAP_EDGES * sizeof(q1_dedge_t));
 q1_allocatedbspmem += Q1_MAX_MAP_EDGES * sizeof(q1_dedge_t);

 q1_nummarksurfaces = 0;
 q1_dmarksurfaces = (unsigned short *) GetMemory(Q1_MAX_MAP_MARKSURFACES * sizeof(unsigned short));
 q1_allocatedbspmem += Q1_MAX_MAP_MARKSURFACES * sizeof(unsigned short);

 q1_numsurfedges = 0;
 q1_dsurfedges = (int *) GetMemory(Q1_MAX_MAP_SURFEDGES * sizeof(int));
 q1_allocatedbspmem += Q1_MAX_MAP_SURFEDGES * sizeof(int);

 Log_Print("allocated ");
 PrintMemorySize(q1_allocatedbspmem);
 Log_Print(" of BSP memory\n");
}

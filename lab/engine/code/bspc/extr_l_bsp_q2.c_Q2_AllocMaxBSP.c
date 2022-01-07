
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dvis_t ;
typedef int dvertex_t ;
typedef int dplane_t ;
typedef int dnode_t ;
typedef int dmodel_t ;
typedef int dleaf_t ;
typedef int dface_t ;
typedef int dedge_t ;
typedef int dbrushside_t ;
typedef int dbrush_t ;
typedef int dareaportal_t ;
typedef int darea_t ;
typedef int byte ;


 scalar_t__ GetClearedMemory (int) ;
 int Log_Print (char*) ;
 int MAX_MAP_AREAPORTALS ;
 int MAX_MAP_AREAS ;
 int MAX_MAP_BRUSHES ;
 int MAX_MAP_BRUSHSIDES ;
 int MAX_MAP_EDGES ;
 int MAX_MAP_ENTSTRING ;
 int MAX_MAP_FACES ;
 int MAX_MAP_LEAFBRUSHES ;
 int MAX_MAP_LEAFFACES ;
 int MAX_MAP_LEAFS ;
 int MAX_MAP_LIGHTING ;
 int MAX_MAP_MODELS ;
 int MAX_MAP_NODES ;
 int MAX_MAP_PLANES ;
 int MAX_MAP_SURFEDGES ;
 int MAX_MAP_VERTS ;
 int MAX_MAP_VISIBILITY ;
 int PrintMemorySize (int) ;
 int allocatedbspmem ;
 int * dareaportals ;
 int * dareas ;
 int * dbrushes ;
 int * dbrushsides ;
 int * dedges ;
 char* dentdata ;
 int * dfaces ;
 unsigned short* dleafbrushes ;
 unsigned short* dleaffaces ;
 int * dleafs ;
 int * dlightdata ;
 int * dmodels ;
 int * dnodes ;
 int * dplanes ;
 int* dsurfedges ;
 int * dvertexes ;
 int * dvis ;
 int * dvisdata ;
 scalar_t__ entdatasize ;
 scalar_t__ lightdatasize ;
 scalar_t__ numareaportals ;
 scalar_t__ numareas ;
 scalar_t__ numbrushes ;
 scalar_t__ numbrushsides ;
 scalar_t__ numedges ;
 scalar_t__ numfaces ;
 scalar_t__ numleafbrushes ;
 scalar_t__ numleaffaces ;
 scalar_t__ numleafs ;
 scalar_t__ nummodels ;
 scalar_t__ numnodes ;
 scalar_t__ numplanes ;
 scalar_t__ numsurfedges ;
 scalar_t__ numvertexes ;
 scalar_t__ visdatasize ;

void Q2_AllocMaxBSP(void)
{

 nummodels = 0;
 dmodels = (dmodel_t *) GetClearedMemory(MAX_MAP_MODELS * sizeof(dmodel_t));
 allocatedbspmem += MAX_MAP_MODELS * sizeof(dmodel_t);

 visdatasize = 0;
 dvisdata = (byte *) GetClearedMemory(MAX_MAP_VISIBILITY * sizeof(byte));
 dvis = (dvis_t *) dvisdata;
 allocatedbspmem += MAX_MAP_VISIBILITY * sizeof(byte);

 lightdatasize = 0;
 dlightdata = (byte *) GetClearedMemory(MAX_MAP_LIGHTING * sizeof(byte));
 allocatedbspmem += MAX_MAP_LIGHTING * sizeof(byte);

 entdatasize = 0;
 dentdata = (char *) GetClearedMemory(MAX_MAP_ENTSTRING * sizeof(char));
 allocatedbspmem += MAX_MAP_ENTSTRING * sizeof(char);

 numleafs = 0;
 dleafs = (dleaf_t *) GetClearedMemory(MAX_MAP_LEAFS * sizeof(dleaf_t));
 allocatedbspmem += MAX_MAP_LEAFS * sizeof(dleaf_t);

 numplanes = 0;
 dplanes = (dplane_t *) GetClearedMemory(MAX_MAP_PLANES * sizeof(dplane_t));
 allocatedbspmem += MAX_MAP_PLANES * sizeof(dplane_t);

 numvertexes = 0;
 dvertexes = (dvertex_t *) GetClearedMemory(MAX_MAP_VERTS * sizeof(dvertex_t));
 allocatedbspmem += MAX_MAP_VERTS * sizeof(dvertex_t);

 numnodes = 0;
 dnodes = (dnode_t *) GetClearedMemory(MAX_MAP_NODES * sizeof(dnode_t));
 allocatedbspmem += MAX_MAP_NODES * sizeof(dnode_t);







 numfaces = 0;
 dfaces = (dface_t *) GetClearedMemory(MAX_MAP_FACES * sizeof(dface_t));
 allocatedbspmem += MAX_MAP_FACES * sizeof(dface_t);

 numedges = 0;
 dedges = (dedge_t *) GetClearedMemory(MAX_MAP_EDGES * sizeof(dedge_t));
 allocatedbspmem += MAX_MAP_EDGES * sizeof(dedge_t);

 numleaffaces = 0;
 dleaffaces = (unsigned short *) GetClearedMemory(MAX_MAP_LEAFFACES * sizeof(unsigned short));
 allocatedbspmem += MAX_MAP_LEAFFACES * sizeof(unsigned short);

 numleafbrushes = 0;
 dleafbrushes = (unsigned short *) GetClearedMemory(MAX_MAP_LEAFBRUSHES * sizeof(unsigned short));
 allocatedbspmem += MAX_MAP_LEAFBRUSHES * sizeof(unsigned short);

 numsurfedges = 0;
 dsurfedges = (int *) GetClearedMemory(MAX_MAP_SURFEDGES * sizeof(int));
 allocatedbspmem += MAX_MAP_SURFEDGES * sizeof(int);

 numbrushes = 0;
 dbrushes = (dbrush_t *) GetClearedMemory(MAX_MAP_BRUSHES * sizeof(dbrush_t));
 allocatedbspmem += MAX_MAP_BRUSHES * sizeof(dbrush_t);

 numbrushsides = 0;
 dbrushsides = (dbrushside_t *) GetClearedMemory(MAX_MAP_BRUSHSIDES * sizeof(dbrushside_t));
 allocatedbspmem += MAX_MAP_BRUSHSIDES * sizeof(dbrushside_t);

 numareas = 0;
 dareas = (darea_t *) GetClearedMemory(MAX_MAP_AREAS * sizeof(darea_t));
 allocatedbspmem += MAX_MAP_AREAS * sizeof(darea_t);

 numareaportals = 0;
 dareaportals = (dareaportal_t *) GetClearedMemory(MAX_MAP_AREAPORTALS * sizeof(dareaportal_t));
 allocatedbspmem += MAX_MAP_AREAPORTALS * sizeof(dareaportal_t);

 Log_Print("allocated ");
 PrintMemorySize(allocatedbspmem);
 Log_Print(" of BSP memory\n");
}

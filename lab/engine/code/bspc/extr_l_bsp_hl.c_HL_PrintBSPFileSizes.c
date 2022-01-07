
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hl_dvisdata ;
typedef int hl_dtexdata ;
typedef int hl_dlightdata ;
typedef int hl_dentdata ;


 scalar_t__ ArrayUsage (char*,int ,int ,int ) ;
 int ENTRIES (int ) ;
 int ENTRYSIZE (int ) ;
 scalar_t__ GlobUsage (char*,int ,int) ;
 int hl_dclipnodes ;
 int hl_dedges ;
 int hl_dfaces ;
 int hl_dleafs ;
 int hl_dmarksurfaces ;
 int hl_dmodels ;
 int hl_dnodes ;
 int hl_dplanes ;
 int hl_dsurfedges ;
 int hl_dvertexes ;
 int hl_entdatasize ;
 int hl_lightdatasize ;
 int hl_numclipnodes ;
 int hl_numedges ;
 int hl_numfaces ;
 int hl_numleafs ;
 int hl_nummarksurfaces ;
 int hl_nummodels ;
 int hl_numnodes ;
 int hl_numplanes ;
 int hl_numsurfedges ;
 int hl_numtexinfo ;
 int hl_numvertexes ;
 int hl_texdatasize ;
 int hl_texinfo ;
 int hl_visdatasize ;
 int qprintf (char*,...) ;

void HL_PrintBSPFileSizes(void)
{
 int totalmemory = 0;

 qprintf("\n");
 qprintf("Object names  Objects/Maxobjs  Memory / Maxmem  Fullness\n" );
 qprintf("------------  ---------------  ---------------  --------\n" );

 totalmemory += ArrayUsage( "models", hl_nummodels, ENTRIES(hl_dmodels), ENTRYSIZE(hl_dmodels) );
 totalmemory += ArrayUsage( "planes", hl_numplanes, ENTRIES(hl_dplanes), ENTRYSIZE(hl_dplanes) );
 totalmemory += ArrayUsage( "vertexes", hl_numvertexes, ENTRIES(hl_dvertexes), ENTRYSIZE(hl_dvertexes) );
 totalmemory += ArrayUsage( "nodes", hl_numnodes, ENTRIES(hl_dnodes), ENTRYSIZE(hl_dnodes) );
 totalmemory += ArrayUsage( "texinfos", hl_numtexinfo, ENTRIES(hl_texinfo), ENTRYSIZE(hl_texinfo) );
 totalmemory += ArrayUsage( "faces", hl_numfaces, ENTRIES(hl_dfaces), ENTRYSIZE(hl_dfaces) );
 totalmemory += ArrayUsage( "clipnodes", hl_numclipnodes, ENTRIES(hl_dclipnodes), ENTRYSIZE(hl_dclipnodes) );
 totalmemory += ArrayUsage( "leaves", hl_numleafs, ENTRIES(hl_dleafs), ENTRYSIZE(hl_dleafs) );
 totalmemory += ArrayUsage( "marksurfaces",hl_nummarksurfaces,ENTRIES(hl_dmarksurfaces),ENTRYSIZE(hl_dmarksurfaces) );
 totalmemory += ArrayUsage( "surfedges", hl_numsurfedges, ENTRIES(hl_dsurfedges), ENTRYSIZE(hl_dsurfedges) );
 totalmemory += ArrayUsage( "edges", hl_numedges, ENTRIES(hl_dedges), ENTRYSIZE(hl_dedges) );

 totalmemory += GlobUsage( "texdata", hl_texdatasize, sizeof(hl_dtexdata) );
 totalmemory += GlobUsage( "lightdata", hl_lightdatasize, sizeof(hl_dlightdata) );
 totalmemory += GlobUsage( "visdata", hl_visdatasize, sizeof(hl_dvisdata) );
 totalmemory += GlobUsage( "entdata", hl_entdatasize, sizeof(hl_dentdata) );

 qprintf( "=== Total BSP file data space used: %d bytes ===\n\n", totalmemory );
}

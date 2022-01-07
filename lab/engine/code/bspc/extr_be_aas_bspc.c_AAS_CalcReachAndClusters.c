
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct quakefile_s {int filename; int * pakfile; } ;
struct TYPE_2__ {scalar_t__ numclusters; scalar_t__ reachabilitysize; int bspchecksum; } ;


 scalar_t__ AAS_ContinueInitReachability (float) ;
 int AAS_InitAASLinkHeap () ;
 int AAS_InitAASLinkedEntities () ;
 int AAS_InitBotImport () ;
 int AAS_InitClustering () ;
 int AAS_InitReachability () ;
 int AAS_InitSettings () ;
 int AAS_LoadBSPFile () ;
 int AAS_SetViewPortalsAsClusterPortals () ;
 int CM_InlineModel (int ) ;
 int CM_LoadMap (char*,int ,int *) ;
 int Log_Print (char*) ;
 TYPE_1__ aasworld ;
 int qfalse ;
 int strcpy (int *,int ) ;
 int worldmodel ;

void AAS_CalcReachAndClusters(struct quakefile_s *qf)
{
 float time;

 Log_Print("loading collision map...\n");

 if (!qf->pakfile[0]) strcpy(qf->pakfile, qf->filename);

 CM_LoadMap((char *) qf, qfalse, &aasworld.bspchecksum);

 worldmodel = CM_InlineModel(0);

 AAS_InitBotImport();

 AAS_LoadBSPFile();

 AAS_InitSettings();

 AAS_InitAASLinkHeap();

 AAS_InitAASLinkedEntities();

 aasworld.reachabilitysize = 0;
 aasworld.numclusters = 0;

 AAS_SetViewPortalsAsClusterPortals();

 AAS_InitReachability();
 time = 0;
 while(AAS_ContinueInitReachability(time)) time++;

 AAS_InitClustering();
}

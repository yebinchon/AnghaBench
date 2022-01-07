
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int numareas; int numclusters; int numportalcache; int numareacache; int size; struct TYPE_9__* next; void* clustercrc; void* areacrc; int version; int ident; } ;
typedef TYPE_1__ routecacheheader_t ;
typedef int fileHandle_t ;
typedef TYPE_1__ aas_routingcache_t ;
struct TYPE_10__ {int numareas; } ;
typedef TYPE_3__ aas_cluster_t ;
typedef int aas_area_t ;
struct TYPE_12__ {int numareas; int numclusters; TYPE_1__*** clusterareacache; TYPE_3__* clusters; TYPE_1__** portalcache; scalar_t__ areas; int mapname; } ;
struct TYPE_11__ {int (* Print ) (int ,char*,int) ;int (* FS_FCloseFile ) (int ) ;int (* FS_Write ) (TYPE_1__*,int,int ) ;int (* FS_FOpenFile ) (char*,int *,int ) ;} ;


 int AAS_Error (char*,char*) ;
 void* CRC_ProcessString (unsigned char*,int) ;
 int Com_sprintf (char*,int,char*,int ) ;
 int FS_WRITE ;
 int MAX_QPATH ;
 int PRT_MESSAGE ;
 int RCID ;
 int RCVERSION ;
 TYPE_8__ aasworld ;
 TYPE_7__ botimport ;
 int stub1 (char*,int *,int ) ;
 int stub2 (TYPE_1__*,int,int ) ;
 int stub3 (TYPE_1__*,int,int ) ;
 int stub4 (TYPE_1__*,int,int ) ;
 int stub5 (int ) ;
 int stub6 (int ,char*,char*) ;
 int stub7 (int ,char*,int) ;

void AAS_WriteRouteCache(void)
{
 int i, j, numportalcache, numareacache, totalsize;
 aas_routingcache_t *cache;
 aas_cluster_t *cluster;
 fileHandle_t fp;
 char filename[MAX_QPATH];
 routecacheheader_t routecacheheader;

 numportalcache = 0;
 for (i = 0; i < aasworld.numareas; i++)
 {
  for (cache = aasworld.portalcache[i]; cache; cache = cache->next)
  {
   numportalcache++;
  }
 }
 numareacache = 0;
 for (i = 0; i < aasworld.numclusters; i++)
 {
  cluster = &aasworld.clusters[i];
  for (j = 0; j < cluster->numareas; j++)
  {
   for (cache = aasworld.clusterareacache[i][j]; cache; cache = cache->next)
   {
    numareacache++;
   }
  }
 }

 Com_sprintf(filename, MAX_QPATH, "maps/%s.rcd", aasworld.mapname);
 botimport.FS_FOpenFile( filename, &fp, FS_WRITE );
 if (!fp)
 {
  AAS_Error("Unable to open file: %s\n", filename);
  return;
 }

 routecacheheader.ident = RCID;
 routecacheheader.version = RCVERSION;
 routecacheheader.numareas = aasworld.numareas;
 routecacheheader.numclusters = aasworld.numclusters;
 routecacheheader.areacrc = CRC_ProcessString( (unsigned char *)aasworld.areas, sizeof(aas_area_t) * aasworld.numareas );
 routecacheheader.clustercrc = CRC_ProcessString( (unsigned char *)aasworld.clusters, sizeof(aas_cluster_t) * aasworld.numclusters );
 routecacheheader.numportalcache = numportalcache;
 routecacheheader.numareacache = numareacache;

 botimport.FS_Write(&routecacheheader, sizeof(routecacheheader_t), fp);

 totalsize = 0;

 for (i = 0; i < aasworld.numareas; i++)
 {
  for (cache = aasworld.portalcache[i]; cache; cache = cache->next)
  {
   botimport.FS_Write(cache, cache->size, fp);
   totalsize += cache->size;
  }
 }
 for (i = 0; i < aasworld.numclusters; i++)
 {
  cluster = &aasworld.clusters[i];
  for (j = 0; j < cluster->numareas; j++)
  {
   for (cache = aasworld.clusterareacache[i][j]; cache; cache = cache->next)
   {
    botimport.FS_Write(cache, cache->size, fp);
    totalsize += cache->size;
   }
  }
 }
 botimport.FS_FCloseFile(fp);
 botimport.Print(PRT_MESSAGE, "\nroute cache written to %s\n", filename);
 botimport.Print(PRT_MESSAGE, "written %d bytes of routing cache\n", totalsize);
}

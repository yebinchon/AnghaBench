
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int areanum; int frontcluster; int backcluster; } ;
typedef TYPE_2__ aas_portal_t ;
struct TYPE_7__ {size_t firstportal; size_t numportals; } ;
typedef TYPE_3__ aas_cluster_t ;
struct TYPE_8__ {int numportals; scalar_t__ portalindexsize; int* portalindex; TYPE_3__* clusters; TYPE_1__* areasettings; TYPE_2__* portals; } ;
struct TYPE_5__ {int cluster; int contents; } ;


 int AAS_Error (char*,...) ;
 scalar_t__ AAS_MAX_PORTALINDEXSIZE ;
 int AREACONTENTS_CLUSTERPORTAL ;
 int Log_Write (char*,int) ;
 TYPE_4__ aasworld ;
 int qfalse ;
 int qtrue ;

int AAS_UpdatePortal(int areanum, int clusternum)
{
 int portalnum;
 aas_portal_t *portal;
 aas_cluster_t *cluster;


 for (portalnum = 1; portalnum < aasworld.numportals; portalnum++)
 {
  if (aasworld.portals[portalnum].areanum == areanum) break;
 }

 if (portalnum == aasworld.numportals)
 {
  AAS_Error("no portal of area %d\n", areanum);
  return qtrue;
 }

 portal = &aasworld.portals[portalnum];

 if (portal->frontcluster == clusternum) return qtrue;
 if (portal->backcluster == clusternum) return qtrue;

 if (!portal->frontcluster)
 {
  portal->frontcluster = clusternum;
 }

 else if (!portal->backcluster)
 {
  portal->backcluster = clusternum;
 }
 else
 {

  aasworld.areasettings[areanum].contents &= ~AREACONTENTS_CLUSTERPORTAL;
  Log_Write("portal area %d is separating more than two clusters\r\n", areanum);
  return qfalse;
 }
 if (aasworld.portalindexsize >= AAS_MAX_PORTALINDEXSIZE)
 {
  AAS_Error("AAS_MAX_PORTALINDEXSIZE\n");
  return qtrue;
 }

 aasworld.areasettings[areanum].cluster = -portalnum;

 cluster = &aasworld.clusters[clusternum];
 aasworld.portalindex[cluster->firstportal + cluster->numportals] = portalnum;
 aasworld.portalindexsize++;
 cluster->numportals++;
 return qtrue;
}

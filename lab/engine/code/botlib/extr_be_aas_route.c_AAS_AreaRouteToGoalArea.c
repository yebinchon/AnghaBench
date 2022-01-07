
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ vec3_t ;
struct TYPE_11__ {int* traveltimes; int* reachabilities; } ;
typedef TYPE_2__ aas_routingcache_t ;
struct TYPE_12__ {int start; } ;
typedef TYPE_3__ aas_reachability_t ;
struct TYPE_13__ {int frontcluster; int backcluster; int areanum; } ;
typedef TYPE_4__ aas_portal_t ;
struct TYPE_14__ {int numreachabilityareas; int numportals; int firstportal; } ;
typedef TYPE_5__ aas_cluster_t ;
struct TYPE_16__ {int numareas; int* portalindex; TYPE_3__* reachability; TYPE_1__* areasettings; scalar_t__* portalmaxtraveltimes; TYPE_4__* portals; TYPE_5__* clusters; int initialized; } ;
struct TYPE_15__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_10__ {int cluster; int firstreachablearea; int numreachableareas; } ;


 scalar_t__ AAS_AreaDoNotEnter (int) ;
 unsigned short AAS_AreaTravelTime (int,scalar_t__,int ) ;
 int AAS_ClusterAreaNum (int,int) ;
 int AAS_FreeOldestCache () ;
 TYPE_2__* AAS_GetAreaRoutingCache (int,int,int) ;
 TYPE_2__* AAS_GetPortalRoutingCache (int,int,int) ;
 int AvailableMemory () ;
 int PRT_ERROR ;
 int TFL_DONOTENTER ;
 TYPE_7__ aasworld ;
 scalar_t__ botDeveloper ;
 TYPE_6__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,int) ;

int AAS_AreaRouteToGoalArea(int areanum, vec3_t origin, int goalareanum, int travelflags, int *traveltime, int *reachnum)
{
 int clusternum, goalclusternum, portalnum, i, clusterareanum, bestreachnum;
 unsigned short int t, besttime;
 aas_portal_t *portal;
 aas_cluster_t *cluster;
 aas_routingcache_t *areacache, *portalcache;
 aas_reachability_t *reach;

 if (!aasworld.initialized) return qfalse;

 if (areanum == goalareanum)
 {
  *traveltime = 1;
  *reachnum = 0;
  return qtrue;
 }

 if (areanum <= 0 || areanum >= aasworld.numareas)
 {
  if (botDeveloper)
  {
   botimport.Print(PRT_ERROR, "AAS_AreaTravelTimeToGoalArea: areanum %d out of range\n", areanum);
  }
  return qfalse;
 }
 if (goalareanum <= 0 || goalareanum >= aasworld.numareas)
 {
  if (botDeveloper)
  {
   botimport.Print(PRT_ERROR, "AAS_AreaTravelTimeToGoalArea: goalareanum %d out of range\n", goalareanum);
  }
  return qfalse;
 }
 if (!aasworld.areasettings[areanum].numreachableareas || !aasworld.areasettings[goalareanum].numreachableareas)
 {
  return qfalse;
 }

 while(AvailableMemory() < 1 * 1024 * 1024) {
  if (!AAS_FreeOldestCache()) break;
 }

 if (AAS_AreaDoNotEnter(areanum) || AAS_AreaDoNotEnter(goalareanum))
 {
  travelflags |= TFL_DONOTENTER;
 }
 clusternum = aasworld.areasettings[areanum].cluster;
 goalclusternum = aasworld.areasettings[goalareanum].cluster;

 if (clusternum < 0 && goalclusternum > 0)
 {
  portal = &aasworld.portals[-clusternum];
  if (portal->frontcluster == goalclusternum ||
    portal->backcluster == goalclusternum)
  {
   clusternum = goalclusternum;
  }
 }

 else if (clusternum > 0 && goalclusternum < 0)
 {
  portal = &aasworld.portals[-goalclusternum];
  if (portal->frontcluster == clusternum ||
    portal->backcluster == clusternum)
  {
   goalclusternum = clusternum;
  }
 }


 if (clusternum > 0 && goalclusternum > 0 && clusternum == goalclusternum)
 {

  areacache = AAS_GetAreaRoutingCache(clusternum, goalareanum, travelflags);

  clusterareanum = AAS_ClusterAreaNum(clusternum, areanum);

  cluster = &aasworld.clusters[clusternum];

  if (clusterareanum >= cluster->numreachabilityareas) return 0;

  if (areacache->traveltimes[clusterareanum] != 0)
  {
   *reachnum = aasworld.areasettings[areanum].firstreachablearea +
       areacache->reachabilities[clusterareanum];
   if (!origin) {
    *traveltime = areacache->traveltimes[clusterareanum];
    return qtrue;
   }
   reach = &aasworld.reachability[*reachnum];
   *traveltime = areacache->traveltimes[clusterareanum] +
       AAS_AreaTravelTime(areanum, origin, reach->start);

   return qtrue;
  }
 }

 clusternum = aasworld.areasettings[areanum].cluster;
 goalclusternum = aasworld.areasettings[goalareanum].cluster;

 if (goalclusternum < 0)
 {

  portal = &aasworld.portals[-goalclusternum];
  goalclusternum = portal->frontcluster;
 }

 portalcache = AAS_GetPortalRoutingCache(goalclusternum, goalareanum, travelflags);

 if (clusternum < 0)
 {
  *traveltime = portalcache->traveltimes[-clusternum];
  *reachnum = aasworld.areasettings[areanum].firstreachablearea +
      portalcache->reachabilities[-clusternum];
  return qtrue;
 }

 besttime = 0;
 bestreachnum = -1;

 cluster = &aasworld.clusters[clusternum];

 for (i = 0; i < cluster->numportals; i++)
 {
  portalnum = aasworld.portalindex[cluster->firstportal + i];

  if (!portalcache->traveltimes[portalnum]) continue;

  portal = &aasworld.portals[portalnum];

  areacache = AAS_GetAreaRoutingCache(clusternum, portal->areanum, travelflags);

  clusterareanum = AAS_ClusterAreaNum(clusternum, areanum);

  if (clusterareanum >= cluster->numreachabilityareas) continue;

  if (!areacache->traveltimes[clusterareanum]) continue;


  t = portalcache->traveltimes[portalnum] + areacache->traveltimes[clusterareanum];





  t += aasworld.portalmaxtraveltimes[portalnum];

  if (origin)
  {
   *reachnum = aasworld.areasettings[areanum].firstreachablearea +
       areacache->reachabilities[clusterareanum];
   reach = aasworld.reachability + *reachnum;
   t += AAS_AreaTravelTime(areanum, origin, reach->start);
  }

  if (!besttime || t < besttime)
  {
   bestreachnum = *reachnum;
   besttime = t;
  }
 }
 if (bestreachnum < 0) {
  return qfalse;
 }
 *reachnum = bestreachnum;
 *traveltime = besttime;
 return qtrue;
}

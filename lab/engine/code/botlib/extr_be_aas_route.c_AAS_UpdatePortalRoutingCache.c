
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t cluster; size_t areanum; unsigned short tmptraveltime; scalar_t__ inlist; struct TYPE_10__* next; struct TYPE_10__* prev; } ;
typedef TYPE_2__ aas_routingupdate_t ;
struct TYPE_11__ {size_t cluster; size_t areanum; unsigned short starttraveltime; unsigned short* traveltimes; int travelflags; } ;
typedef TYPE_3__ aas_routingcache_t ;
struct TYPE_12__ {scalar_t__ areanum; size_t frontcluster; size_t backcluster; } ;
typedef TYPE_4__ aas_portal_t ;
struct TYPE_13__ {int numportals; int firstportal; int numreachabilityareas; } ;
typedef TYPE_5__ aas_cluster_t ;
struct TYPE_14__ {size_t numportals; int* portalindex; unsigned short* portalmaxtraveltimes; TYPE_2__* portalupdate; TYPE_4__* portals; TYPE_5__* clusters; TYPE_1__* areasettings; } ;
struct TYPE_9__ {int cluster; } ;


 int AAS_ClusterAreaNum (size_t,scalar_t__) ;
 TYPE_3__* AAS_GetAreaRoutingCache (size_t,size_t,int ) ;
 TYPE_6__ aasworld ;
 int numportalcacheupdates ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

void AAS_UpdatePortalRoutingCache(aas_routingcache_t *portalcache)
{
 int i, portalnum, clusterareanum, clusternum;
 unsigned short int t;
 aas_portal_t *portal;
 aas_cluster_t *cluster;
 aas_routingcache_t *cache;
 aas_routingupdate_t *updateliststart, *updatelistend, *curupdate, *nextupdate;







 curupdate = &aasworld.portalupdate[aasworld.numportals];
 curupdate->cluster = portalcache->cluster;
 curupdate->areanum = portalcache->areanum;
 curupdate->tmptraveltime = portalcache->starttraveltime;

 clusternum = aasworld.areasettings[portalcache->areanum].cluster;
 if (clusternum < 0)
 {
  portalcache->traveltimes[-clusternum] = portalcache->starttraveltime;
 }

 curupdate->next = ((void*)0);
 curupdate->prev = ((void*)0);
 updateliststart = curupdate;
 updatelistend = curupdate;

 while (updateliststart)
 {
  curupdate = updateliststart;

  if (curupdate->next) curupdate->next->prev = ((void*)0);
  else updatelistend = ((void*)0);
  updateliststart = curupdate->next;

  curupdate->inlist = qfalse;

  cluster = &aasworld.clusters[curupdate->cluster];

  cache = AAS_GetAreaRoutingCache(curupdate->cluster,
        curupdate->areanum, portalcache->travelflags);

  for (i = 0; i < cluster->numportals; i++)
  {
   portalnum = aasworld.portalindex[cluster->firstportal + i];
   portal = &aasworld.portals[portalnum];

   if (portal->areanum == curupdate->areanum) continue;

   clusterareanum = AAS_ClusterAreaNum(curupdate->cluster, portal->areanum);
   if (clusterareanum >= cluster->numreachabilityareas) continue;

   t = cache->traveltimes[clusterareanum];
   if (!t) continue;
   t += curupdate->tmptraveltime;

   if (!portalcache->traveltimes[portalnum] ||
     portalcache->traveltimes[portalnum] > t)
   {
    portalcache->traveltimes[portalnum] = t;
    nextupdate = &aasworld.portalupdate[portalnum];
    if (portal->frontcluster == curupdate->cluster)
    {
     nextupdate->cluster = portal->backcluster;
    }
    else
    {
     nextupdate->cluster = portal->frontcluster;
    }
    nextupdate->areanum = portal->areanum;

    nextupdate->tmptraveltime = t + aasworld.portalmaxtraveltimes[portalnum];
    if (!nextupdate->inlist)
    {



     nextupdate->next = ((void*)0);
     nextupdate->prev = updatelistend;
     if (updatelistend) updatelistend->next = nextupdate;
     else updateliststart = nextupdate;
     updatelistend = nextupdate;
     nextupdate->inlist = qtrue;
    }
   }
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
typedef void* qboolean ;
struct TYPE_6__ {int areanum; scalar_t__* start; unsigned short tmptraveltime; void* inlist; struct TYPE_6__* next; struct TYPE_6__* prev; int areatraveltimes; } ;
typedef TYPE_2__ aas_routingupdate_t ;
struct TYPE_7__ {int areanum; unsigned short traveltime; scalar_t__* end; int start; int traveltype; } ;
typedef TYPE_3__ aas_reachability_t ;
struct TYPE_8__ {int numareas; TYPE_2__* areaupdate; TYPE_1__* areasettings; TYPE_3__* reachability; int ** areatraveltimes; } ;
struct TYPE_5__ {int numreachableareas; size_t firstreachablearea; } ;


 int AAS_AreaContentsTravelFlags_inline (int) ;
 unsigned short AAS_AreaTravelTime (size_t,scalar_t__*,int ) ;
 scalar_t__ AAS_AreaVisible (int,int) ;
 int AAS_ProjectPointOntoVector (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int AAS_TravelFlagForType_inline (int ) ;
 int Com_Memset (unsigned short*,int ,int) ;
 scalar_t__ GetClearedMemory (int) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 float VectorLength (scalar_t__*) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 TYPE_4__ aasworld ;
 void* qfalse ;
 void* qtrue ;

int AAS_NearestHideArea(int srcnum, vec3_t origin, int areanum, int enemynum, vec3_t enemyorigin, int enemyareanum, int travelflags)
{
 int i, j, nextareanum, badtravelflags, numreach, bestarea;
 unsigned short int t, besttraveltime;
 static unsigned short int *hidetraveltimes;
 aas_routingupdate_t *updateliststart, *updatelistend, *curupdate, *nextupdate;
 aas_reachability_t *reach;
 float dist1, dist2;
 vec3_t v1, v2, p;
 qboolean startVisible;


 if (!hidetraveltimes)
 {
  hidetraveltimes = (unsigned short int *) GetClearedMemory(aasworld.numareas * sizeof(unsigned short int));
 }
 else
 {
  Com_Memset(hidetraveltimes, 0, aasworld.numareas * sizeof(unsigned short int));
 }
 besttraveltime = 0;
 bestarea = 0;

 startVisible = qtrue;

 badtravelflags = ~travelflags;

 curupdate = &aasworld.areaupdate[areanum];
 curupdate->areanum = areanum;
 VectorCopy(origin, curupdate->start);
 curupdate->areatraveltimes = aasworld.areatraveltimes[areanum][0];
 curupdate->tmptraveltime = 0;

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

  numreach = aasworld.areasettings[curupdate->areanum].numreachableareas;
  reach = &aasworld.reachability[aasworld.areasettings[curupdate->areanum].firstreachablearea];

  for (i = 0; i < numreach; i++, reach++)
  {

   if (AAS_TravelFlagForType_inline(reach->traveltype) & badtravelflags) continue;

   if (AAS_AreaContentsTravelFlags_inline(reach->areanum) & badtravelflags) continue;

   nextareanum = reach->areanum;

   if (nextareanum == enemyareanum) continue;


   t = curupdate->tmptraveltime +
      AAS_AreaTravelTime(curupdate->areanum, curupdate->start, reach->start) +
       reach->traveltime;


   AAS_ProjectPointOntoVector(enemyorigin, curupdate->start, reach->end, p);
   for (j = 0; j < 3; j++)
    if ((p[j] > curupdate->start[j] && p[j] > reach->end[j]) ||
     (p[j] < curupdate->start[j] && p[j] < reach->end[j]))
     break;
   if (j < 3)
   {
    VectorSubtract(enemyorigin, reach->end, v2);
   }
   else
   {
    VectorSubtract(enemyorigin, p, v2);
   }
   dist2 = VectorLength(v2);

   if (dist2 < 40) continue;

   VectorSubtract(enemyorigin, curupdate->start, v1);
   dist1 = VectorLength(v1);

   if (dist2 < dist1)
   {
    t += (dist1 - dist2) * 10;
   }

   if (!startVisible && AAS_AreaVisible(enemyareanum, nextareanum)) {
    continue;
   }

   if (besttraveltime && t >= besttraveltime) continue;

   if (!hidetraveltimes[nextareanum] ||
     hidetraveltimes[nextareanum] > t)
   {

    if (!AAS_AreaVisible(enemyareanum, nextareanum))
    {
     besttraveltime = t;
     bestarea = nextareanum;
    }
    hidetraveltimes[nextareanum] = t;
    nextupdate = &aasworld.areaupdate[nextareanum];
    nextupdate->areanum = nextareanum;
    nextupdate->tmptraveltime = t;

    VectorCopy(reach->end, nextupdate->start);

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
 return bestarea;
}

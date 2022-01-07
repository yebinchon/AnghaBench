
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int traveltime; int traveltype; int end; int start; int edgenum; int facenum; int areanum; } ;
typedef TYPE_1__ aas_reachability_t ;
struct TYPE_8__ {int traveltime; int traveltype; int end; int start; int edgenum; int facenum; int areanum; struct TYPE_8__* next; } ;
typedef TYPE_2__ aas_lreachability_t ;
struct TYPE_9__ {size_t firstreachablearea; size_t numreachableareas; } ;
typedef TYPE_3__ aas_areasettings_t ;
struct TYPE_10__ {int reachabilitysize; int numareas; TYPE_1__* reachability; TYPE_3__* areasettings; } ;


 int FreeMemory (TYPE_1__*) ;
 scalar_t__ GetClearedMemory (int) ;
 int VectorCopy (int ,int ) ;
 TYPE_5__ aasworld ;
 TYPE_2__** areareachability ;
 int numlreachabilities ;

void AAS_StoreReachability(void)
{
 int i;
 aas_areasettings_t *areasettings;
 aas_lreachability_t *lreach;
 aas_reachability_t *reach;

 if (aasworld.reachability) FreeMemory(aasworld.reachability);
 aasworld.reachability = (aas_reachability_t *) GetClearedMemory((numlreachabilities + 10) * sizeof(aas_reachability_t));
 aasworld.reachabilitysize = 1;
 for (i = 0; i < aasworld.numareas; i++)
 {
  areasettings = &aasworld.areasettings[i];
  areasettings->firstreachablearea = aasworld.reachabilitysize;
  areasettings->numreachableareas = 0;
  for (lreach = areareachability[i]; lreach; lreach = lreach->next)
  {
   reach = &aasworld.reachability[areasettings->firstreachablearea +
             areasettings->numreachableareas];
   reach->areanum = lreach->areanum;
   reach->facenum = lreach->facenum;
   reach->edgenum = lreach->edgenum;
   VectorCopy(lreach->start, reach->start);
   VectorCopy(lreach->end, reach->end);
   reach->traveltype = lreach->traveltype;
   reach->traveltime = lreach->traveltime;

   areasettings->numreachableareas++;
  }
  aasworld.reachabilitysize += areasettings->numreachableareas;
 }
}

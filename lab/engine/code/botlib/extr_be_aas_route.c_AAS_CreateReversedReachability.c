
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int numlinks; TYPE_2__* first; } ;
typedef TYPE_1__ aas_reversedreachability_t ;
struct TYPE_9__ {int areanum; int linknum; struct TYPE_9__* next; } ;
typedef TYPE_2__ aas_reversedlink_t ;
struct TYPE_10__ {size_t areanum; } ;
typedef TYPE_3__ aas_reachability_t ;
struct TYPE_11__ {int numreachableareas; int firstreachablearea; } ;
typedef TYPE_4__ aas_areasettings_t ;
struct TYPE_13__ {int numareas; int reachabilitysize; TYPE_1__* reversedreachability; TYPE_3__* reachability; TYPE_4__* areasettings; } ;
struct TYPE_12__ {int (* Print ) (int ,char*,int) ;} ;


 int FreeMemory (TYPE_1__*) ;
 scalar_t__ GetClearedMemory (int) ;
 int PRT_MESSAGE ;
 int PRT_WARNING ;
 int Sys_MilliSeconds () ;
 TYPE_6__ aasworld ;
 TYPE_5__ botimport ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,int) ;

void AAS_CreateReversedReachability(void)
{
 int i, n;
 aas_reversedlink_t *revlink;
 aas_reachability_t *reach;
 aas_areasettings_t *settings;
 char *ptr;






 if (aasworld.reversedreachability) FreeMemory(aasworld.reversedreachability);

 ptr = (char *) GetClearedMemory(aasworld.numareas * sizeof(aas_reversedreachability_t) +
       aasworld.reachabilitysize * sizeof(aas_reversedlink_t));

 aasworld.reversedreachability = (aas_reversedreachability_t *) ptr;

 ptr += aasworld.numareas * sizeof(aas_reversedreachability_t);

 for (i = 1; i < aasworld.numareas; i++)
 {

  settings = &aasworld.areasettings[i];

  if (settings->numreachableareas >= 128)
   botimport.Print(PRT_WARNING, "area %d has more than 128 reachabilities\n", i);

  for (n = 0; n < settings->numreachableareas && n < 128; n++)
  {

   reach = &aasworld.reachability[settings->firstreachablearea + n];

   revlink = (aas_reversedlink_t *) ptr;
   ptr += sizeof(aas_reversedlink_t);

   revlink->areanum = i;
   revlink->linknum = settings->firstreachablearea + n;
   revlink->next = aasworld.reversedreachability[reach->areanum].first;
   aasworld.reversedreachability[reach->areanum].first = revlink;
   aasworld.reversedreachability[reach->areanum].numlinks++;
  }
 }



}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {TYPE_2__* first; int numlinks; } ;
typedef TYPE_1__ aas_reversedreachability_t ;
struct TYPE_8__ {size_t linknum; struct TYPE_8__* next; } ;
typedef TYPE_2__ aas_reversedlink_t ;
struct TYPE_9__ {int start; int end; } ;
typedef TYPE_3__ aas_reachability_t ;
struct TYPE_10__ {int numreachableareas; int firstreachablearea; } ;
typedef TYPE_4__ aas_areasettings_t ;
struct TYPE_12__ {unsigned short*** areatraveltimes; int numareas; TYPE_3__* reachability; TYPE_4__* areasettings; TYPE_1__* reversedreachability; } ;
struct TYPE_11__ {int (* Print ) (int ,char*,int) ;} ;


 unsigned short AAS_AreaTravelTime (int,int ,int ) ;
 int FreeMemory (unsigned short***) ;
 scalar_t__ GetClearedMemory (int) ;
 int PAD (int ,int) ;
 int PRT_MESSAGE ;
 int Sys_MilliSeconds () ;
 int VectorCopy (int ,int ) ;
 TYPE_6__ aasworld ;
 TYPE_5__ botimport ;
 int stub1 (int ,char*,int) ;

void AAS_CalculateAreaTravelTimes(void)
{
 int i, l, n, size;
 char *ptr;
 vec3_t end;
 aas_reversedreachability_t *revreach;
 aas_reversedlink_t *revlink;
 aas_reachability_t *reach;
 aas_areasettings_t *settings;






 if (aasworld.areatraveltimes) FreeMemory(aasworld.areatraveltimes);

 size = aasworld.numareas * sizeof(unsigned short **);
 for (i = 0; i < aasworld.numareas; i++)
 {
  revreach = &aasworld.reversedreachability[i];

  settings = &aasworld.areasettings[i];

  size += settings->numreachableareas * sizeof(unsigned short *);

  size += settings->numreachableareas *
   PAD(revreach->numlinks, sizeof(long)) * sizeof(unsigned short);
 }

 ptr = (char *) GetClearedMemory(size);
 aasworld.areatraveltimes = (unsigned short ***) ptr;
 ptr += aasworld.numareas * sizeof(unsigned short **);

 for (i = 0; i < aasworld.numareas; i++)
 {

  revreach = &aasworld.reversedreachability[i];

  settings = &aasworld.areasettings[i];

  aasworld.areatraveltimes[i] = (unsigned short **) ptr;
  ptr += settings->numreachableareas * sizeof(unsigned short *);

  for (l = 0; l < settings->numreachableareas; l++)
  {
   aasworld.areatraveltimes[i][l] = (unsigned short *) ptr;
   ptr += PAD(revreach->numlinks, sizeof(long)) * sizeof(unsigned short);

   reach = &aasworld.reachability[settings->firstreachablearea + l];

   for (n = 0, revlink = revreach->first; revlink; revlink = revlink->next, n++)
   {
    VectorCopy(aasworld.reachability[revlink->linknum].end, end);

    aasworld.areatraveltimes[i][l][n] = AAS_AreaTravelTime(i, end, reach->start);
   }
  }
 }



}

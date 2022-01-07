
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int aas_lreachability_t ;
struct TYPE_2__ {int numreachabilityareas; int numareas; int savefile; scalar_t__ reachabilitysize; int loaded; } ;


 int AAS_SetWeaponJumpAreaFlags () ;
 int AAS_SetupReachabilityHeap () ;
 scalar_t__ GetClearedMemory (int) ;
 scalar_t__ LibVarGetValue (char*) ;
 TYPE_1__ aasworld ;
 int ** areareachability ;
 scalar_t__ calcgrapplereach ;
 int qtrue ;

void AAS_InitReachability(void)
{
 if (!aasworld.loaded) return;

 if (aasworld.reachabilitysize)
 {

  if (!((int)LibVarGetValue("forcereachability")))
  {
   aasworld.numreachabilityareas = aasworld.numareas + 2;
   return;
  }




 }

 calcgrapplereach = LibVarGetValue("grapplereach");

 aasworld.savefile = qtrue;

 aasworld.numreachabilityareas = 1;


 AAS_SetupReachabilityHeap();

 areareachability = (aas_lreachability_t **) GetClearedMemory(
         aasworld.numareas * sizeof(aas_lreachability_t *));

 AAS_SetWeaponJumpAreaFlags();
}

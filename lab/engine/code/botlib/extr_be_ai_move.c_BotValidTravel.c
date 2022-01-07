
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int areanum; int traveltype; } ;
typedef TYPE_1__ aas_reachability_t ;


 int AAS_AreaContentsTravelFlags (int ) ;
 int AAS_TravelFlagForType (int ) ;
 int qfalse ;
 int qtrue ;

int BotValidTravel(vec3_t origin, aas_reachability_t *reach, int travelflags)
{

 if (AAS_TravelFlagForType(reach->traveltype) & ~travelflags) return qfalse;

 if (AAS_AreaContentsTravelFlags(reach->areanum) & ~travelflags) return qfalse;
 return qtrue;
}

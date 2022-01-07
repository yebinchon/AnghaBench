
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int reachabilitysize; TYPE_1__* reachability; } ;
struct TYPE_3__ {int traveltype; } ;


 int Log_Print (char*,int,char*) ;
 int TRAVELTYPE_MASK ;
 TYPE_2__ aasworld ;

void AAS_ShowNumReachabilities(int tt, char *name)
{
 int i, num;

 num = 0;
 for (i = 0; i < aasworld.reachabilitysize; i++)
 {
  if ((aasworld.reachability[i].traveltype & TRAVELTYPE_MASK) == tt)
   num++;
 }
 Log_Print("%6d %s\n", num, name);
}

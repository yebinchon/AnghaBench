
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numareas; } ;
struct TYPE_3__ {int (* Print ) (int ,char*,int) ;} ;


 scalar_t__ AAS_CheckAreaForPossiblePortals (int) ;
 int PRT_MESSAGE ;
 TYPE_2__ aasworld ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,int) ;

void AAS_FindPossiblePortals(void)
{
 int i, numpossibleportals;

 numpossibleportals = 0;
 for (i = 1; i < aasworld.numareas; i++)
 {
  numpossibleportals += AAS_CheckAreaForPossiblePortals(i);
 }
 botimport.Print(PRT_MESSAGE, "\r%6d possible portal areas\n", numpossibleportals);
}

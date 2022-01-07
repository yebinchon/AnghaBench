
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Print ) (int ,char*,int ) ;} ;


 int PRT_MESSAGE ;
 TYPE_1__ botimport ;
 int numareacacheupdates ;
 int numportalcacheupdates ;
 int routingcachesize ;
 int stub1 (int ,char*,int ) ;
 int stub2 (int ,char*,int ) ;
 int stub3 (int ,char*,int ) ;

void AAS_RoutingInfo(void)
{
 botimport.Print(PRT_MESSAGE, "%d area cache updates\n", numareacacheupdates);
 botimport.Print(PRT_MESSAGE, "%d portal cache updates\n", numportalcacheupdates);
 botimport.Print(PRT_MESSAGE, "%d bytes routing cache\n", routingcachesize);
}

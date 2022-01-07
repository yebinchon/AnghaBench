
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int aas_t ;
struct TYPE_5__ {int initialized; scalar_t__ entities; } ;
struct TYPE_4__ {int (* Print ) (int ,char*) ;} ;


 int AAS_DumpAASData () ;
 int AAS_DumpBSPData () ;
 int AAS_FreeAASLinkHeap () ;
 int AAS_FreeAASLinkedEntities () ;
 int AAS_FreeRoutingCaches () ;
 int AAS_ShutdownAlternativeRouting () ;
 int Com_Memset (TYPE_2__*,int ,int) ;
 int FreeMemory (scalar_t__) ;
 int PRT_MESSAGE ;
 TYPE_2__ aasworld ;
 TYPE_1__ botimport ;
 int qfalse ;
 int stub1 (int ,char*) ;

void AAS_Shutdown(void)
{
 AAS_ShutdownAlternativeRouting();

 AAS_DumpBSPData();

 AAS_FreeRoutingCaches();

 AAS_FreeAASLinkHeap();

 AAS_FreeAASLinkedEntities();

 AAS_DumpAASData();

 if (aasworld.entities) FreeMemory(aasworld.entities);

 Com_Memset(&aasworld, 0, sizeof(aas_t));

 aasworld.initialized = qfalse;



 botimport.Print(PRT_MESSAGE, "AAS shutdown.\n");
}

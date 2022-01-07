
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int aas_entity_t ;
struct TYPE_2__ {int maxclients; int maxentities; scalar_t__ numframes; int * entities; } ;


 int AAS_InvalidateEntities () ;
 int BLERR_NOERROR ;
 int FreeMemory (int *) ;
 scalar_t__ GetClearedHunkMemory (int) ;
 int LibVar (char*,char*) ;
 scalar_t__ LibVarValue (char*,char*) ;
 TYPE_1__ aasworld ;
 int saveroutingcache ;

int AAS_Setup(void)
{
 aasworld.maxclients = (int) LibVarValue("maxclients", "128");
 aasworld.maxentities = (int) LibVarValue("maxentities", "1024");

 saveroutingcache = LibVar("saveroutingcache", "0");

 if (aasworld.entities) FreeMemory(aasworld.entities);
 aasworld.entities = (aas_entity_t *) GetClearedHunkMemory(aasworld.maxentities * sizeof(aas_entity_t));

 AAS_InvalidateEntities();



 aasworld.numframes = 0;
 return BLERR_NOERROR;
}

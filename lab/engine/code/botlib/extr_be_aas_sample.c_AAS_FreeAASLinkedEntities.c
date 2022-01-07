
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * arealinkedentities; } ;


 int FreeMemory (int *) ;
 TYPE_1__ aasworld ;

void AAS_FreeAASLinkedEntities(void)
{
 if (aasworld.arealinkedentities) FreeMemory(aasworld.arealinkedentities);
 aasworld.arealinkedentities = ((void*)0);
}

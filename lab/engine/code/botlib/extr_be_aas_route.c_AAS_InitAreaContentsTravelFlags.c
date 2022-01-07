
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* areacontentstravelflags; int numareas; } ;


 int AAS_GetAreaContentsTravelFlags (int) ;
 int FreeMemory (int*) ;
 scalar_t__ GetClearedMemory (int) ;
 TYPE_1__ aasworld ;

void AAS_InitAreaContentsTravelFlags(void)
{
 int i;

 if (aasworld.areacontentstravelflags) FreeMemory(aasworld.areacontentstravelflags);
 aasworld.areacontentstravelflags = (int *) GetClearedMemory(aasworld.numareas * sizeof(int));

 for (i = 0; i < aasworld.numareas; i++) {
  aasworld.areacontentstravelflags[i] = AAS_GetAreaContentsTravelFlags(i);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numentities; } ;


 TYPE_1__ bspworld ;

int AAS_NextBSPEntity(int ent)
{
 ent++;
 if (ent >= 1 && ent < bspworld.numentities) return ent;
 return 0;
}

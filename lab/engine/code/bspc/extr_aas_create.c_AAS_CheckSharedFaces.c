
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* l_next; } ;
typedef TYPE_1__ tmp_area_t ;
struct TYPE_6__ {TYPE_1__* areas; } ;


 int AAS_CheckAreaSharedFaces (TYPE_1__*,TYPE_1__*) ;
 TYPE_2__ tmpaasworld ;

void AAS_CheckSharedFaces(void)
{
 tmp_area_t *tmparea1, *tmparea2;

 for (tmparea1 = tmpaasworld.areas; tmparea1; tmparea1 = tmparea1->l_next)
 {
  for (tmparea2 = tmpaasworld.areas; tmparea2; tmparea2 = tmparea2->l_next)
  {
   if (tmparea1 == tmparea2) continue;
   AAS_CheckAreaSharedFaces(tmparea1, tmparea2);
  }
 }
}

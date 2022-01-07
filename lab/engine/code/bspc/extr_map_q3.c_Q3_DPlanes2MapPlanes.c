
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dist; int normal; } ;


 int FindFloatPlane (int ,int ) ;
 int * dplanes2mapplanes ;
 TYPE_1__* q3_dplanes ;
 int q3_numplanes ;

void Q3_DPlanes2MapPlanes(void)
{
 int i;

 for (i = 0; i < q3_numplanes; i++)
 {
  dplanes2mapplanes[i] = FindFloatPlane(q3_dplanes[i].normal, q3_dplanes[i].dist);
 }
}

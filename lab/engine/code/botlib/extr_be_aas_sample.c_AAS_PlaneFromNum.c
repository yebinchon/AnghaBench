
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int aas_plane_t ;
struct TYPE_2__ {int * planes; int loaded; } ;


 TYPE_1__ aasworld ;

aas_plane_t *AAS_PlaneFromNum(int planenum)
{
 if (!aasworld.loaded) return ((void*)0);

 return &aasworld.planes[planenum];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dist; } ;
typedef TYPE_1__ aas_plane_t ;
struct TYPE_4__ {TYPE_1__* planes; } ;


 int PLANE_HASH_SIZE ;
 int* aas_hashplanes ;
 int* aas_planechain ;
 TYPE_2__ aasworld ;
 scalar_t__ fabs (int ) ;

void AAS_AddPlaneToHash(int planenum)
{
 int hash;
 aas_plane_t *plane;

 plane = &aasworld.planes[planenum];

 hash = (int)fabs(plane->dist) / 8;
 hash &= (PLANE_HASH_SIZE-1);

 aas_planechain[planenum] = aas_hashplanes[hash];
 aas_hashplanes[hash] = planenum;
}

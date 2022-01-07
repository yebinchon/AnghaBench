
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* vec_t ;
typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_4__ {scalar_t__* normal; int type; void* dist; } ;
typedef TYPE_1__ aas_plane_t ;
struct TYPE_6__ {int numplanes; TYPE_1__* planes; } ;
struct TYPE_5__ {int max_planes; } ;


 int AAS_AddPlaneToHash (int) ;
 scalar_t__ AAS_FindPlane (int ,void*,int*) ;
 int AAS_PlaneTypeForNormal (int ) ;
 int Error (char*,int) ;
 int PlaneTypeForNormal (scalar_t__*) ;
 int VectorCopy (int ,scalar_t__*) ;
 int VectorNegate (scalar_t__*,scalar_t__*) ;
 TYPE_3__ aasworld ;
 TYPE_2__ max_aas ;

qboolean AAS_GetPlane(vec3_t normal, vec_t dist, int *planenum)
{
 aas_plane_t *plane, temp;






 if (AAS_FindPlane(normal, dist, planenum)) return 1;


 if (aasworld.numplanes >= max_aas.max_planes-1)
 {
  Error("AAS_MAX_PLANES = %d", max_aas.max_planes);
 }
 plane = &aasworld.planes[aasworld.numplanes];
 VectorCopy(normal, plane->normal);
 plane->dist = dist;
 plane->type = AAS_PlaneTypeForNormal(normal);

 *planenum = aasworld.numplanes;
 aasworld.numplanes++;

 AAS_AddPlaneToHash(aasworld.numplanes - 1);
 return 0;

}

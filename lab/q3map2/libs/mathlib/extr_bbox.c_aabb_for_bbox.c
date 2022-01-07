
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef int * vec3_t ;
struct TYPE_6__ {int * extents; int origin; } ;
struct TYPE_7__ {TYPE_1__ aabb; int * axes; } ;
typedef TYPE_2__ bbox_t ;
struct TYPE_8__ {scalar_t__* extents; int origin; } ;
typedef TYPE_3__ aabb_t ;


 int VectorCopy (int ,int ) ;
 int VectorScale (int ,int ,int *) ;
 scalar_t__ fabs (int ) ;

void aabb_for_bbox( aabb_t *aabb, const bbox_t *bbox ){
 int i;
 vec3_t temp[3];

 VectorCopy( bbox->aabb.origin, aabb->origin );


 VectorScale( bbox->axes[0], bbox->aabb.extents[0], temp[0] );
 VectorScale( bbox->axes[1], bbox->aabb.extents[1], temp[1] );
 VectorScale( bbox->axes[2], bbox->aabb.extents[2], temp[2] );
 for ( i = 0; i < 3; i++ ) aabb->extents[i] = (vec_t)( fabs( temp[0][i] ) + fabs( temp[1][i] ) + fabs( temp[2][i] ) );
}

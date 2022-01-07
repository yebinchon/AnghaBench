
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vec_t ;
typedef int* vec3_t ;
struct TYPE_11__ {int frame; int origin; } ;
struct TYPE_13__ {TYPE_2__ e; } ;
typedef TYPE_4__ trRefEntity_t ;
struct TYPE_14__ {int* bounds; } ;
typedef TYPE_5__ iqmData_t ;
struct TYPE_15__ {int** bounds; } ;
typedef TYPE_6__ fog_t ;
struct TYPE_10__ {int rdflags; } ;
struct TYPE_16__ {TYPE_3__* world; TYPE_1__ refdef; } ;
struct TYPE_12__ {int numfogs; TYPE_6__* fogs; } ;


 int RDF_NOWORLDMODEL ;
 int VectorAdd (int ,int*,int*) ;
 float VectorLength (int*) ;
 int VectorMA (int const*,float,int*,int*) ;
 int VectorSubtract (int const*,int const*,int*) ;
 TYPE_7__ tr ;

int R_ComputeIQMFogNum( iqmData_t *data, trRefEntity_t *ent ) {
 int i, j;
 fog_t *fog;
 const vec_t *bounds;
 const vec_t defaultBounds[6] = { -8, -8, -8, 8, 8, 8 };
 vec3_t diag, center;
 vec3_t localOrigin;
 vec_t radius;

 if ( tr.refdef.rdflags & RDF_NOWORLDMODEL ) {
  return 0;
 }


 if (data->bounds) {
  bounds = data->bounds + 6*ent->e.frame;
 } else {
  bounds = defaultBounds;
 }
 VectorSubtract( bounds+3, bounds, diag );
 VectorMA( bounds, 0.5f, diag, center );
 VectorAdd( ent->e.origin, center, localOrigin );
 radius = 0.5f * VectorLength( diag );

 for ( i = 1 ; i < tr.world->numfogs ; i++ ) {
  fog = &tr.world->fogs[i];
  for ( j = 0 ; j < 3 ; j++ ) {
   if ( localOrigin[j] - radius >= fog->bounds[1][j] ) {
    break;
   }
   if ( localOrigin[j] + radius <= fog->bounds[0][j] ) {
    break;
   }
  }
  if ( j == 3 ) {
   return i;
  }
 }

 return 0;
}

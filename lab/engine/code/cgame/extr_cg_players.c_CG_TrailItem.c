
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_6__ {int* origin; int hModel; scalar_t__** axis; } ;
typedef TYPE_1__ refEntity_t ;
typedef int qhandle_t ;
typedef int ent ;
struct TYPE_7__ {int lerpOrigin; int lerpAngles; } ;
typedef TYPE_2__ centity_t ;


 int AnglesToAxis (scalar_t__*,scalar_t__**) ;
 size_t PITCH ;
 size_t ROLL ;
 int VectorCopy (int ,scalar_t__*) ;
 int VectorMA (int ,int,scalar_t__*,int*) ;
 size_t YAW ;
 int memset (TYPE_1__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_1__*) ;

__attribute__((used)) static void CG_TrailItem( centity_t *cent, qhandle_t hModel ) {
 refEntity_t ent;
 vec3_t angles;
 vec3_t axis[3];

 VectorCopy( cent->lerpAngles, angles );
 angles[PITCH] = 0;
 angles[ROLL] = 0;
 AnglesToAxis( angles, axis );

 memset( &ent, 0, sizeof( ent ) );
 VectorMA( cent->lerpOrigin, -16, axis[0], ent.origin );
 ent.origin[2] += 16;
 angles[YAW] += 90;
 AnglesToAxis( angles, ent.axis );

 ent.hModel = hModel;
 trap_R_AddRefEntityToScene( &ent );
}

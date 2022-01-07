
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ backlerp; int * axis; int origin; int frame; int oldframe; } ;
typedef TYPE_1__ refEntity_t ;
typedef int qhandle_t ;
struct TYPE_7__ {int axis; int * origin; } ;
typedef TYPE_2__ orientation_t ;


 int MatrixMultiply (int ,int *,int *) ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int ,int ,int ) ;
 int trap_R_LerpTag (TYPE_2__*,int ,int ,int ,scalar_t__,char*) ;

void CG_PositionEntityOnTag( refEntity_t *entity, const refEntity_t *parent,
       qhandle_t parentModel, char *tagName ) {
 int i;
 orientation_t lerped;


 trap_R_LerpTag( &lerped, parentModel, parent->oldframe, parent->frame,
  1.0 - parent->backlerp, tagName );


 VectorCopy( parent->origin, entity->origin );
 for ( i = 0 ; i < 3 ; i++ ) {
  VectorMA( entity->origin, lerped.origin[i], parent->axis[i], entity->origin );
 }


 MatrixMultiply( lerped.axis, ((refEntity_t *)parent)->axis, entity->axis );
 entity->backlerp = parent->backlerp;
}

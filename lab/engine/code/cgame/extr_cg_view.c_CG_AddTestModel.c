
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int* origin; int** axis; int hModel; } ;
struct TYPE_7__ {int* vieworg; int** viewaxis; } ;
struct TYPE_12__ {TYPE_2__ testModelEntity; TYPE_1__ refdef; scalar_t__ testGun; int testModelName; } ;
struct TYPE_11__ {int value; } ;
struct TYPE_10__ {int value; } ;
struct TYPE_9__ {int value; } ;


 int CG_Printf (char*) ;
 int VectorCopy (int*,int*) ;
 TYPE_6__ cg ;
 TYPE_5__ cg_gun_x ;
 TYPE_4__ cg_gun_y ;
 TYPE_3__ cg_gun_z ;
 int trap_R_AddRefEntityToScene (TYPE_2__*) ;
 int trap_R_RegisterModel (int ) ;

__attribute__((used)) static void CG_AddTestModel (void) {
 int i;


 cg.testModelEntity.hModel = trap_R_RegisterModel( cg.testModelName );
 if (! cg.testModelEntity.hModel ) {
  CG_Printf ("Can't register model\n");
  return;
 }


 if ( cg.testGun ) {
  VectorCopy( cg.refdef.vieworg, cg.testModelEntity.origin );
  VectorCopy( cg.refdef.viewaxis[0], cg.testModelEntity.axis[0] );
  VectorCopy( cg.refdef.viewaxis[1], cg.testModelEntity.axis[1] );
  VectorCopy( cg.refdef.viewaxis[2], cg.testModelEntity.axis[2] );


  for (i=0 ; i<3 ; i++) {
   cg.testModelEntity.origin[i] += cg.refdef.viewaxis[0][i] * cg_gun_x.value;
   cg.testModelEntity.origin[i] += cg.refdef.viewaxis[1][i] * cg_gun_y.value;
   cg.testModelEntity.origin[i] += cg.refdef.viewaxis[2][i] * cg_gun_z.value;
  }
 }

 trap_R_AddRefEntityToScene( &cg.testModelEntity );
}

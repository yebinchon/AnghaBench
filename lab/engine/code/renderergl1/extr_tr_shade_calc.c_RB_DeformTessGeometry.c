
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int deformation; } ;
typedef TYPE_3__ deformStage_t ;
struct TYPE_10__ {int * text; } ;
struct TYPE_14__ {TYPE_1__ refdef; } ;
struct TYPE_13__ {TYPE_2__* shader; } ;
struct TYPE_11__ {int numDeforms; TYPE_3__* deforms; } ;


 int Autosprite2Deform () ;
 int AutospriteDeform () ;
 int DeformText (int ) ;
 int RB_CalcBulgeVertexes (TYPE_3__*) ;
 int RB_CalcDeformNormals (TYPE_3__*) ;
 int RB_CalcDeformVertexes (TYPE_3__*) ;
 int RB_CalcMoveVertexes (TYPE_3__*) ;
 int RB_ProjectionShadowDeform () ;
 TYPE_5__ backEnd ;
 TYPE_4__ tess ;

void RB_DeformTessGeometry( void ) {
 int i;
 deformStage_t *ds;

 for ( i = 0 ; i < tess.shader->numDeforms ; i++ ) {
  ds = &tess.shader->deforms[ i ];

  switch ( ds->deformation ) {
        case 139:
            break;
  case 138:
   RB_CalcDeformNormals( ds );
   break;
  case 128:
   RB_CalcDeformVertexes( ds );
   break;
  case 141:
   RB_CalcBulgeVertexes( ds );
   break;
  case 140:
   RB_CalcMoveVertexes( ds );
   break;
  case 137:
   RB_ProjectionShadowDeform();
   break;
  case 143:
   AutospriteDeform();
   break;
  case 142:
   Autosprite2Deform();
   break;
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
   DeformText( backEnd.refdef.text[ds->deformation - 136] );
   break;
  }
 }
}

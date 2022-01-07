
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int deformation; } ;
typedef TYPE_2__ deformStage_t ;
struct TYPE_14__ {int numDeforms; TYPE_2__* deforms; } ;
struct TYPE_10__ {int * text; } ;
struct TYPE_13__ {TYPE_1__ refdef; } ;
struct TYPE_12__ {TYPE_5__* shader; } ;


 int Autosprite2Deform () ;
 int AutospriteDeform () ;
 int DeformText (int ) ;
 int RB_CalcBulgeVertexes (TYPE_2__*) ;
 int RB_CalcDeformNormals (TYPE_2__*) ;
 int RB_CalcDeformVertexes (TYPE_2__*) ;
 int RB_CalcMoveVertexes (TYPE_2__*) ;
 int RB_ProjectionShadowDeform () ;
 int ShaderRequiresCPUDeforms (TYPE_5__*) ;
 TYPE_4__ backEnd ;
 TYPE_3__ tess ;

void RB_DeformTessGeometry( void ) {
 int i;
 deformStage_t *ds;

 if(!ShaderRequiresCPUDeforms(tess.shader))
 {

  return;
 }

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

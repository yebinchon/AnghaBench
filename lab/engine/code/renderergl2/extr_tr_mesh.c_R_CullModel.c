
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_9__ {int frame; int oldframe; int nonNormalizedAxes; } ;
struct TYPE_11__ {TYPE_1__ e; } ;
typedef TYPE_3__ trRefEntity_t ;
struct TYPE_12__ {TYPE_5__* frames; } ;
typedef TYPE_4__ mdvModel_t ;
struct TYPE_13__ {scalar_t__** bounds; int radius; int localOrigin; } ;
typedef TYPE_5__ mdvFrame_t ;
struct TYPE_10__ {int c_box_cull_md3_out; int c_box_cull_md3_clip; int c_box_cull_md3_in; int c_sphere_cull_md3_clip; int c_sphere_cull_md3_in; int c_sphere_cull_md3_out; } ;
struct TYPE_14__ {TYPE_2__ pc; } ;





 int R_CullLocalBox (scalar_t__**) ;
 int R_CullLocalPointAndRadius (int ,int ) ;
 TYPE_6__ tr ;

__attribute__((used)) static int R_CullModel( mdvModel_t *model, trRefEntity_t *ent ) {
 vec3_t bounds[2];
 mdvFrame_t *oldFrame, *newFrame;
 int i;


 newFrame = model->frames + ent->e.frame;
 oldFrame = model->frames + ent->e.oldframe;


 if ( !ent->e.nonNormalizedAxes )
 {
  if ( ent->e.frame == ent->e.oldframe )
  {
   switch ( R_CullLocalPointAndRadius( newFrame->localOrigin, newFrame->radius ) )
   {
   case 128:
    tr.pc.c_sphere_cull_md3_out++;
    return 128;

   case 129:
    tr.pc.c_sphere_cull_md3_in++;
    return 129;

   case 130:
    tr.pc.c_sphere_cull_md3_clip++;
    break;
   }
  }
  else
  {
   int sphereCull, sphereCullB;

   sphereCull = R_CullLocalPointAndRadius( newFrame->localOrigin, newFrame->radius );
   if ( newFrame == oldFrame ) {
    sphereCullB = sphereCull;
   } else {
    sphereCullB = R_CullLocalPointAndRadius( oldFrame->localOrigin, oldFrame->radius );
   }

   if ( sphereCull == sphereCullB )
   {
    if ( sphereCull == 128 )
    {
     tr.pc.c_sphere_cull_md3_out++;
     return 128;
    }
    else if ( sphereCull == 129 )
    {
     tr.pc.c_sphere_cull_md3_in++;
     return 129;
    }
    else
    {
     tr.pc.c_sphere_cull_md3_clip++;
    }
   }
  }
 }


 for (i = 0 ; i < 3 ; i++) {
  bounds[0][i] = oldFrame->bounds[0][i] < newFrame->bounds[0][i] ? oldFrame->bounds[0][i] : newFrame->bounds[0][i];
  bounds[1][i] = oldFrame->bounds[1][i] > newFrame->bounds[1][i] ? oldFrame->bounds[1][i] : newFrame->bounds[1][i];
 }

 switch ( R_CullLocalBox( bounds ) )
 {
 case 129:
  tr.pc.c_box_cull_md3_in++;
  return 129;
 case 130:
  tr.pc.c_box_cull_md3_clip++;
  return 130;
 case 128:
 default:
  tr.pc.c_box_cull_md3_out++;
  return 128;
 }
}

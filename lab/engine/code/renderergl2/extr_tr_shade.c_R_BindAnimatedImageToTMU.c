
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t videoMapHandle; int numImageAnimations; size_t imageAnimationSpeed; int * image; scalar_t__ isVideoMap; } ;
typedef TYPE_1__ textureBundle_t ;
typedef size_t int64_t ;
struct TYPE_9__ {int (* CIN_UploadCinematic ) (size_t) ;int (* CIN_RunCinematic ) (size_t) ;} ;
struct TYPE_8__ {size_t shaderTime; } ;
struct TYPE_7__ {int * scratchImage; } ;


 size_t FUNCTABLE_SIZE ;
 size_t FUNCTABLE_SIZE2 ;
 int GL_BindToTMU (int ,int) ;
 TYPE_4__ ri ;
 int stub1 (size_t) ;
 int stub2 (size_t) ;
 TYPE_3__ tess ;
 TYPE_2__ tr ;

__attribute__((used)) static void R_BindAnimatedImageToTMU( textureBundle_t *bundle, int tmu ) {
 int64_t index;

 if ( bundle->isVideoMap ) {
  ri.CIN_RunCinematic(bundle->videoMapHandle);
  ri.CIN_UploadCinematic(bundle->videoMapHandle);
  GL_BindToTMU(tr.scratchImage[bundle->videoMapHandle], tmu);
  return;
 }

 if ( bundle->numImageAnimations <= 1 ) {
  GL_BindToTMU( bundle->image[0], tmu);
  return;
 }



 index = tess.shaderTime * bundle->imageAnimationSpeed * FUNCTABLE_SIZE;
 index >>= FUNCTABLE_SIZE2;

 if ( index < 0 ) {
  index = 0;
 }



 while ( index >= bundle->numImageAnimations ) {
  index -= bundle->numImageAnimations;
 }

 GL_BindToTMU( bundle->image[ index ], tmu );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int compileFlags; float* averageColor; int color; TYPE_2__* lightImage; TYPE_1__* shaderImage; int normalImagePath; int shader; int * normalImage; int lightImagePath; int implicitImagePath; int editorImagePath; } ;
typedef TYPE_3__ shaderInfo_t ;
struct TYPE_6__ {int width; int height; scalar_t__* pixels; } ;
struct TYPE_5__ {int name; } ;


 int C_NODRAW ;
 int ColorNormalize (float*,int ) ;
 int DEFAULT_IMAGE ;
 void* ImageLoad (int ) ;
 int SYS_VRB ;
 int SYS_WRN ;
 int Sys_FPrintf (int ,char*,int ,...) ;
 int VectorClear (float*) ;
 float VectorLength (int ) ;
 int VectorScale (float*,float,float*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ warnImage ;

__attribute__((used)) static void LoadShaderImages( shaderInfo_t *si ){
 int i, count;
 float color[ 4 ];



 if ( si->compileFlags & C_NODRAW ) {
  si->shaderImage = ImageLoad( DEFAULT_IMAGE );
 }
 else
 {

  si->shaderImage = ImageLoad( si->editorImagePath );


  if ( si->shaderImage == ((void*)0) ) {
   si->shaderImage = ImageLoad( si->shader );
  }


  if ( si->shaderImage == ((void*)0) ) {
   si->shaderImage = ImageLoad( si->implicitImagePath );
  }


  if ( si->shaderImage == ((void*)0) ) {
   si->shaderImage = ImageLoad( si->lightImagePath );
  }


  if ( si->shaderImage == ((void*)0) ) {
   si->shaderImage = ImageLoad( DEFAULT_IMAGE );
   if ( warnImage && strcmp( si->shader, "noshader" ) ) {
    Sys_FPrintf( SYS_WRN, "WARNING: Couldn't find image for shader %s\n", si->shader );
   }
  }


  si->lightImage = ImageLoad( si->lightImagePath );


  si->normalImage = ImageLoad( si->normalImagePath );
  if ( si->normalImage != ((void*)0) ) {
   Sys_FPrintf( SYS_VRB, "Shader %s has\n"
          "    NM %s\n", si->shader, si->normalImagePath );
  }
 }


 if ( si->lightImage == ((void*)0) ) {
  si->lightImage = ImageLoad( si->shaderImage->name );
 }


 count = si->lightImage->width * si->lightImage->height;
 VectorClear( color );
 color[ 3 ] = 0.0f;
 for ( i = 0; i < count; i++ )
 {
  color[ 0 ] += si->lightImage->pixels[ i * 4 + 0 ];
  color[ 1 ] += si->lightImage->pixels[ i * 4 + 1 ];
  color[ 2 ] += si->lightImage->pixels[ i * 4 + 2 ];
  color[ 3 ] += si->lightImage->pixels[ i * 4 + 3 ];
 }

 if ( VectorLength( si->color ) <= 0.0f ) {
  ColorNormalize( color, si->color );
 }
 VectorScale( color, ( 1.0f / count ), si->averageColor );
 si->averageColor[ 3 ] = color[ 3 ] / count;
}

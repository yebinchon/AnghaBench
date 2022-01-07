
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; scalar_t__ backSide; TYPE_1__* shaderInfo; int * celShader; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_7__ {char* cloneShader; char* backShader; } ;


 TYPE_2__* CloneSurface (TYPE_2__*,int ) ;
 int MakeCelSurface (TYPE_2__*,int *) ;
 scalar_t__ NUM_SURFACE_TYPES ;
 scalar_t__ SURFACE_BAD ;
 int ShaderInfoForShader (char*) ;
 scalar_t__ qtrue ;

void FinishSurface( mapDrawSurface_t *ds ){
 mapDrawSurface_t *ds2;



 if ( ds->type <= SURFACE_BAD || ds->type >= NUM_SURFACE_TYPES || ds == ((void*)0) || ds->shaderInfo == ((void*)0) ) {
  return;
 }


 if ( ds->celShader != ((void*)0) ) {
  MakeCelSurface( ds, ds->celShader );
 }


 if ( ds->backSide ) {
  return;
 }


 if ( ds->shaderInfo->cloneShader != ((void*)0) && ds->shaderInfo->cloneShader[ 0 ] != '\0' ) {
  CloneSurface( ds, ShaderInfoForShader( ds->shaderInfo->cloneShader ) );
 }


 if ( ds->shaderInfo->backShader != ((void*)0) && ds->shaderInfo->backShader[ 0 ] != '\0' ) {
  ds2 = CloneSurface( ds, ShaderInfoForShader( ds->shaderInfo->backShader ) );
  ds2->backSide = qtrue;
 }
}

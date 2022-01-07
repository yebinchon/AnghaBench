
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int shaderInfo_t ;
struct TYPE_8__ {int planeNum; int planar; TYPE_1__* shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_7__ {int compileFlags; } ;


 int C_SKY ;
 int C_TRANSLUCENT ;
 TYPE_2__* CloneSurface (TYPE_2__*,int *) ;
 int qfalse ;

mapDrawSurface_t *MakeCelSurface( mapDrawSurface_t *src, shaderInfo_t *si ){
 mapDrawSurface_t *ds;



 if ( src == ((void*)0) || si == ((void*)0) ) {
  return ((void*)0);
 }


 if ( ( src->shaderInfo->compileFlags & C_TRANSLUCENT ) ||
   ( src->shaderInfo->compileFlags & C_SKY ) ) {
  return ((void*)0);
 }


 ds = CloneSurface( src, si );
 if ( ds == ((void*)0) ) {
  return ((void*)0);
 }


 ds->planar = qfalse;
 ds->planeNum = -1;


 return ds;
}

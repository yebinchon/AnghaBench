
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ customWidth; scalar_t__ customHeight; scalar_t__ brightness; scalar_t__* solid; float** solidColor; int w; int h; int ** bspLuxels; } ;
typedef TYPE_1__ rawLightmap_t ;
typedef int qboolean ;


 float* BSP_LUXEL (int,int,int) ;
 int VectorAdd (float*,float*,float*) ;
 int VectorCopy (float*,float*) ;
 int VectorScale (float*,float,float*) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean MergeBSPLuxels( rawLightmap_t *a, int aNum, rawLightmap_t *b, int bNum ){
 rawLightmap_t *lm;
 int x, y;
 float luxel[ 3 ], *aLuxel, *bLuxel;



 if ( a->customWidth != b->customWidth || a->customHeight != b->customHeight ||
   a->brightness != b->brightness ||
   a->solid[ aNum ] != b->solid[ bNum ] ||
   a->bspLuxels[ aNum ] == ((void*)0) || b->bspLuxels[ bNum ] == ((void*)0) ) {
  return qfalse;
 }


 if ( a->solid[ aNum ] && b->solid[ bNum ] ) {

  VectorAdd( a->solidColor[ aNum ], b->solidColor[ bNum ], luxel );
  VectorScale( luxel, 0.5f, luxel );


  VectorCopy( luxel, a->solidColor[ aNum ] );
  VectorCopy( luxel, b->solidColor[ bNum ] );


  return qtrue;
 }


 if ( a->w != b->w || a->h != b->h ) {
  return qfalse;
 }


 for ( y = 0; y < a->h; y++ )
 {
  for ( x = 0; x < a->w; x++ )
  {

   lm = a; aLuxel = BSP_LUXEL( aNum, x, y );
   lm = b; bLuxel = BSP_LUXEL( bNum, x, y );


   if ( aLuxel[ 0 ] < 0.0f ) {
    VectorCopy( bLuxel, aLuxel );
   }
   else if ( bLuxel[ 0 ] < 0.0f ) {
    VectorCopy( aLuxel, bLuxel );
   }
   else
   {

    VectorAdd( aLuxel, bLuxel, luxel );
    VectorScale( luxel, 0.5f, luxel );





    VectorCopy( luxel, aLuxel );
    VectorCopy( luxel, bLuxel );
   }
  }
 }


 return qtrue;
}

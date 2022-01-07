
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ customWidth; scalar_t__ customHeight; scalar_t__ brightness; scalar_t__* solid; float** solidColor; int w; int h; int ** bspLuxels; } ;
typedef TYPE_1__ rawLightmap_t ;
typedef int qboolean ;


 float* BSP_LUXEL (int,int,int) ;
 double LUXEL_COLOR_FRAC ;
 double LUXEL_TOLERANCE ;
 double SOLID_EPSILON ;
 double fabs (float) ;
 scalar_t__* minLight ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean CompareBSPLuxels( rawLightmap_t *a, int aNum, rawLightmap_t *b, int bNum ){
 rawLightmap_t *lm;
 int x, y;
 double delta, total, rd, gd, bd;
 float *aLuxel, *bLuxel;



 if ( ( minLight[ 0 ] || minLight[ 1 ] || minLight[ 2 ] ) &&
   ( ( aNum == 0 && bNum != 0 ) || ( aNum != 0 && bNum == 0 ) ) ) {
  return qfalse;
 }


 if ( a->customWidth != b->customWidth || a->customHeight != b->customHeight ||
   a->brightness != b->brightness ||
   a->solid[ aNum ] != b->solid[ bNum ] ||
   a->bspLuxels[ aNum ] == ((void*)0) || b->bspLuxels[ bNum ] == ((void*)0) ) {
  return qfalse;
 }


 if ( a->solid[ aNum ] && b->solid[ bNum ] ) {

  rd = fabs( a->solidColor[ aNum ][ 0 ] - b->solidColor[ bNum ][ 0 ] );
  gd = fabs( a->solidColor[ aNum ][ 1 ] - b->solidColor[ bNum ][ 1 ] );
  bd = fabs( a->solidColor[ aNum ][ 2 ] - b->solidColor[ bNum ][ 2 ] );


  if ( rd > SOLID_EPSILON || gd > SOLID_EPSILON || bd > SOLID_EPSILON ) {
   return qfalse;
  }


  return qtrue;
 }


 if ( a->w != b->w || a->h != b->h ) {
  return qfalse;
 }


 delta = 0.0;
 total = 0.0;
 for ( y = 0; y < a->h; y++ )
 {
  for ( x = 0; x < a->w; x++ )
  {

   total += 1.0;


   lm = a; aLuxel = BSP_LUXEL( aNum, x, y );
   lm = b; bLuxel = BSP_LUXEL( bNum, x, y );


   if ( aLuxel[ 0 ] < 0 || bLuxel[ 0 ] < 0 ) {
    continue;
   }


   rd = fabs( aLuxel[ 0 ] - bLuxel[ 0 ] );
   gd = fabs( aLuxel[ 1 ] - bLuxel[ 1 ] );
   bd = fabs( aLuxel[ 2 ] - bLuxel[ 2 ] );


   if ( rd > 3.0 || gd > 3.0 || bd > 3.0 ) {
    return qfalse;
   }


   delta += rd * LUXEL_COLOR_FRAC;
   delta += gd * LUXEL_COLOR_FRAC;
   delta += bd * LUXEL_COLOR_FRAC;


   if ( total > 0.0 && ( ( delta / total ) > LUXEL_TOLERANCE ) ) {
    return qfalse;
   }
  }
 }


 return qtrue;
}

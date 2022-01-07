
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_4__ {int* (* Hunk_AllocateTempMemory ) (int) ;int (* Hunk_FreeTempMemory ) (int*) ;} ;
struct TYPE_3__ {int fogImage; } ;


 int FOG_S ;
 int FOG_T ;
 int IMGFLAG_CLAMPTOEDGE ;
 int IMGTYPE_COLORALPHA ;
 int R_CreateImage (char*,int*,int,int,int ,int ,int ) ;
 float R_FogFactor (int,int) ;
 TYPE_2__ ri ;
 int* stub1 (int) ;
 int stub2 (int*) ;
 TYPE_1__ tr ;

__attribute__((used)) static void R_CreateFogImage( void ) {
 int x,y;
 byte *data;
 float d;

 data = ri.Hunk_AllocateTempMemory( FOG_S * FOG_T * 4 );


 for (x=0 ; x<FOG_S ; x++) {
  for (y=0 ; y<FOG_T ; y++) {
   d = R_FogFactor( ( x + 0.5f ) / FOG_S, ( y + 0.5f ) / FOG_T );

   data[(y*FOG_S+x)*4+0] =
   data[(y*FOG_S+x)*4+1] =
   data[(y*FOG_S+x)*4+2] = 255;
   data[(y*FOG_S+x)*4+3] = 255*d;
  }
 }
 tr.fogImage = R_CreateImage("*fog", (byte *)data, FOG_S, FOG_T, IMGTYPE_COLORALPHA, IMGFLAG_CLAMPTOEDGE, 0 );
 ri.Hunk_FreeTempMemory( data );
}

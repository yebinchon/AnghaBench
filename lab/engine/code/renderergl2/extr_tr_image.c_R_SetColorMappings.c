
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ deviceSupportsGamma; } ;
struct TYPE_13__ {float value; } ;
struct TYPE_12__ {int value; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int (* Cvar_Set ) (char*,char*) ;} ;
struct TYPE_8__ {int overbrightBits; float identityLight; int identityLightByte; } ;


 int GLimp_SetGamma (int*,int*,int*) ;
 TYPE_7__ glConfig ;
 int pow (int,float) ;
 TYPE_6__* r_gamma ;
 TYPE_5__* r_intensity ;
 TYPE_4__* r_mapOverBrightBits ;
 TYPE_3__* r_overBrightBits ;
 TYPE_2__ ri ;
 int* s_gammatable ;
 int* s_intensitytable ;
 int stub1 (char*,char*) ;
 int stub2 (char*,char*) ;
 int stub3 (char*,char*) ;
 TYPE_1__ tr ;

void R_SetColorMappings( void ) {
 int i, j;
 float g;
 int inf;


 tr.overbrightBits = r_overBrightBits->integer;


 if ( tr.overbrightBits > 2 ) {
  tr.overbrightBits = 2;
 } else if ( tr.overbrightBits < 0 ) {
  tr.overbrightBits = 0;
 }


 if ( tr.overbrightBits > r_mapOverBrightBits->integer ) {
  tr.overbrightBits = r_mapOverBrightBits->integer;
 }

 tr.identityLight = 1.0f / ( 1 << tr.overbrightBits );
 tr.identityLightByte = 255 * tr.identityLight;


 if ( r_intensity->value <= 1 ) {
  ri.Cvar_Set( "r_intensity", "1" );
 }

 if ( r_gamma->value < 0.5f ) {
  ri.Cvar_Set( "r_gamma", "0.5" );
 } else if ( r_gamma->value > 3.0f ) {
  ri.Cvar_Set( "r_gamma", "3.0" );
 }

 g = r_gamma->value;

 for ( i = 0; i < 256; i++ ) {
  if ( g == 1 ) {
   inf = i;
  } else {
   inf = 255 * pow ( i/255.0f, 1.0f / g ) + 0.5f;
  }

  if (inf < 0) {
   inf = 0;
  }
  if (inf > 255) {
   inf = 255;
  }
  s_gammatable[i] = inf;
 }

 for (i=0 ; i<256 ; i++) {
  j = i * r_intensity->value;
  if (j > 255) {
   j = 255;
  }
  s_intensitytable[i] = j;
 }

 if ( glConfig.deviceSupportsGamma )
 {
  GLimp_SetGamma( s_gammatable, s_gammatable, s_gammatable );
 }
}

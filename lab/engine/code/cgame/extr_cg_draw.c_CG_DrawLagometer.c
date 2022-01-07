
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_7__ {int whiteShader; int lagometerShader; } ;
struct TYPE_9__ {TYPE_1__ media; scalar_t__ localServer; } ;
struct TYPE_8__ {int frameCount; float* frameSamples; int snapshotCount; float* snapshotSamples; int* snapshotFlags; } ;


 int CG_AdjustFrom640 (float*,float*,float*,float*) ;
 int CG_DrawBigString (int,int,char*,double) ;
 int CG_DrawDisconnect () ;
 int CG_DrawPic (int,int,int,int,int ) ;
 int COLOR_BLUE ;
 int COLOR_GREEN ;
 int COLOR_RED ;
 int COLOR_YELLOW ;
 size_t ColorIndex (int ) ;
 int LAG_SAMPLES ;
 float MAX_LAGOMETER_PING ;
 float MAX_LAGOMETER_RANGE ;
 int SNAPFLAG_RATE_DELAYED ;
 TYPE_6__ cg_lagometer ;
 TYPE_5__ cg_nopredict ;
 TYPE_4__ cg_synchronousClients ;
 TYPE_3__ cgs ;
 int ** g_color_table ;
 TYPE_2__ lagometer ;
 int trap_R_DrawStretchPic (float,float,int,float,int ,int ,int ,int ,int ) ;
 int trap_R_SetColor (int *) ;

__attribute__((used)) static void CG_DrawLagometer( void ) {
 int a, x, y, i;
 float v;
 float ax, ay, aw, ah, mid, range;
 int color;
 float vscale;

 if ( !cg_lagometer.integer || cgs.localServer ) {
  CG_DrawDisconnect();
  return;
 }
 x = 640 - 48;
 y = 480 - 48;


 trap_R_SetColor( ((void*)0) );
 CG_DrawPic( x, y, 48, 48, cgs.media.lagometerShader );

 ax = x;
 ay = y;
 aw = 48;
 ah = 48;
 CG_AdjustFrom640( &ax, &ay, &aw, &ah );

 color = -1;
 range = ah / 3;
 mid = ay + range;

 vscale = range / MAX_LAGOMETER_RANGE;


 for ( a = 0 ; a < aw ; a++ ) {
  i = ( lagometer.frameCount - 1 - a ) & (LAG_SAMPLES - 1);
  v = lagometer.frameSamples[i];
  v *= vscale;
  if ( v > 0 ) {
   if ( color != 1 ) {
    color = 1;
    trap_R_SetColor( g_color_table[ColorIndex(COLOR_YELLOW)] );
   }
   if ( v > range ) {
    v = range;
   }
   trap_R_DrawStretchPic ( ax + aw - a, mid - v, 1, v, 0, 0, 0, 0, cgs.media.whiteShader );
  } else if ( v < 0 ) {
   if ( color != 2 ) {
    color = 2;
    trap_R_SetColor( g_color_table[ColorIndex(COLOR_BLUE)] );
   }
   v = -v;
   if ( v > range ) {
    v = range;
   }
   trap_R_DrawStretchPic( ax + aw - a, mid, 1, v, 0, 0, 0, 0, cgs.media.whiteShader );
  }
 }


 range = ah / 2;
 vscale = range / MAX_LAGOMETER_PING;

 for ( a = 0 ; a < aw ; a++ ) {
  i = ( lagometer.snapshotCount - 1 - a ) & (LAG_SAMPLES - 1);
  v = lagometer.snapshotSamples[i];
  if ( v > 0 ) {
   if ( lagometer.snapshotFlags[i] & SNAPFLAG_RATE_DELAYED ) {
    if ( color != 5 ) {
     color = 5;
     trap_R_SetColor( g_color_table[ColorIndex(COLOR_YELLOW)] );
    }
   } else {
    if ( color != 3 ) {
     color = 3;
     trap_R_SetColor( g_color_table[ColorIndex(COLOR_GREEN)] );
    }
   }
   v = v * vscale;
   if ( v > range ) {
    v = range;
   }
   trap_R_DrawStretchPic( ax + aw - a, ay + ah - v, 1, v, 0, 0, 0, 0, cgs.media.whiteShader );
  } else if ( v < 0 ) {
   if ( color != 4 ) {
    color = 4;
    trap_R_SetColor( g_color_table[ColorIndex(COLOR_RED)] );
   }
   trap_R_DrawStretchPic( ax + aw - a, ay + ah - range, 1, range, 0, 0, 0, 0, cgs.media.whiteShader );
  }
 }

 trap_R_SetColor( ((void*)0) );

 if ( cg_nopredict.integer || cg_synchronousClients.integer ) {
  CG_DrawBigString( x, y, "snc", 1.0 );
 }

 CG_DrawDisconnect();
}

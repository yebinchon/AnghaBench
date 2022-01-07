
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec4_t ;
struct TYPE_7__ {scalar_t__* stats; int* powerups; } ;
typedef TYPE_2__ playerState_t ;
struct TYPE_8__ {int icon; } ;
typedef TYPE_3__ gitem_t ;
struct TYPE_9__ {int time; int powerupActive; float powerupTime; TYPE_1__* snap; } ;
struct TYPE_6__ {TYPE_2__ ps; } ;


 TYPE_3__* BG_FindItemForPowerup (int) ;
 int CG_DrawField (int,float,int,int) ;
 int CG_DrawPic (int,float,float,float,int ) ;
 int CHAR_WIDTH ;
 int ICON_SIZE ;
 int INT_MAX ;
 int MAX_POWERUPS ;
 int POWERUP_BLINKS ;
 int POWERUP_BLINK_TIME ;
 double PULSE_SCALE ;
 float PULSE_TIME ;
 size_t STAT_HEALTH ;
 TYPE_4__ cg ;
 int trap_R_RegisterShader (int ) ;
 int trap_R_SetColor (float*) ;

__attribute__((used)) static float CG_DrawPowerups( float y ) {
 int sorted[MAX_POWERUPS];
 int sortedTime[MAX_POWERUPS];
 int i, j, k;
 int active;
 playerState_t *ps;
 int t;
 gitem_t *item;
 int x;
 int color;
 float size;
 float f;
 static float colors[2][4] = {
    { 0.2f, 1.0f, 0.2f, 1.0f } ,
    { 1.0f, 0.2f, 0.2f, 1.0f }
  };

 ps = &cg.snap->ps;

 if ( ps->stats[STAT_HEALTH] <= 0 ) {
  return y;
 }


 active = 0;
 for ( i = 0 ; i < MAX_POWERUPS ; i++ ) {
  if ( !ps->powerups[ i ] ) {
   continue;
  }



  if ( ps->powerups[ i ] == INT_MAX ) {
   continue;
  }

  t = ps->powerups[ i ] - cg.time;
  if ( t <= 0 ) {
   continue;
  }


  for ( j = 0 ; j < active ; j++ ) {
   if ( sortedTime[j] >= t ) {
    for ( k = active - 1 ; k >= j ; k-- ) {
     sorted[k+1] = sorted[k];
     sortedTime[k+1] = sortedTime[k];
    }
    break;
   }
  }
  sorted[j] = i;
  sortedTime[j] = t;
  active++;
 }


 x = 640 - ICON_SIZE - CHAR_WIDTH * 2;
 for ( i = 0 ; i < active ; i++ ) {
  item = BG_FindItemForPowerup( sorted[i] );

    if (item) {

    color = 1;

    y -= ICON_SIZE;

    trap_R_SetColor( colors[color] );
    CG_DrawField( x, y, 2, sortedTime[ i ] / 1000 );

    t = ps->powerups[ sorted[i] ];
    if ( t - cg.time >= POWERUP_BLINKS * POWERUP_BLINK_TIME ) {
     trap_R_SetColor( ((void*)0) );
    } else {
     vec4_t modulate;

     f = (float)( t - cg.time ) / POWERUP_BLINK_TIME;
     f -= (int)f;
     modulate[0] = modulate[1] = modulate[2] = modulate[3] = f;
     trap_R_SetColor( modulate );
    }

    if ( cg.powerupActive == sorted[i] &&
     cg.time - cg.powerupTime < PULSE_TIME ) {
     f = 1.0 - ( ( (float)cg.time - cg.powerupTime ) / PULSE_TIME );
     size = ICON_SIZE * ( 1.0 + ( PULSE_SCALE - 1.0 ) * f );
    } else {
     size = ICON_SIZE;
    }

    CG_DrawPic( 640 - size, y + ICON_SIZE / 2 - size / 2,
     size, size, trap_R_RegisterShader( item->icon ) );
    }
 }
 trap_R_SetColor( ((void*)0) );

 return y;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_2__ {float frametime; } ;


 float AngleMod (float) ;
 float AngleSubtract (float,float) ;
 float fabs (float) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_1__ uis ;

__attribute__((used)) static void UI_SwingAngles( float destination, float swingTolerance, float clampTolerance,
     float speed, float *angle, qboolean *swinging ) {
 float swing;
 float move;
 float scale;

 if ( !*swinging ) {

  swing = AngleSubtract( *angle, destination );
  if ( swing > swingTolerance || swing < -swingTolerance ) {
   *swinging = qtrue;
  }
 }

 if ( !*swinging ) {
  return;
 }



 swing = AngleSubtract( destination, *angle );
 scale = fabs( swing );
 if ( scale < swingTolerance * 0.5 ) {
  scale = 0.5;
 } else if ( scale < swingTolerance ) {
  scale = 1.0;
 } else {
  scale = 2.0;
 }


 if ( swing >= 0 ) {
  move = uis.frametime * scale * speed;
  if ( move >= swing ) {
   move = swing;
   *swinging = qfalse;
  }
  *angle = AngleMod( *angle + move );
 } else if ( swing < 0 ) {
  move = uis.frametime * scale * -speed;
  if ( move <= swing ) {
   move = swing;
   *swinging = qfalse;
  }
  *angle = AngleMod( *angle + move );
 }


 swing = AngleSubtract( destination, *angle );
 if ( swing > clampTolerance ) {
  *angle = AngleMod( destination - (clampTolerance - 1) );
 } else if ( swing < -clampTolerance ) {
  *angle = AngleMod( destination + (clampTolerance - 1) );
 }
}

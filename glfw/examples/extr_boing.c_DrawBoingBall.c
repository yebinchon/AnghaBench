
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;


 float ANIMATION_SPEED ;
 int BounceBall (double) ;
 double DIST_BALL ;
 scalar_t__ DRAW_BALL_SHADOW ;
 int DrawBoingBallBand (int,scalar_t__) ;
 int GL_CULL_FACE ;
 int GL_FRONT ;
 int GL_MODELVIEW ;
 int GL_NORMALIZE ;
 double MAX_DELTA_T ;
 double SHADOW_OFFSET_X ;
 double SHADOW_OFFSET_Y ;
 double SHADOW_OFFSET_Z ;
 scalar_t__ STEP_LONGITUDE ;
 float TruncateDeg (float) ;
 double ball_x ;
 double ball_y ;
 float deg_rot_y ;
 float deg_rot_y_inc ;
 scalar_t__ drawBallHow ;
 double dt ;
 int glCullFace (int ) ;
 int glEnable (int ) ;
 int glMatrixMode (int ) ;
 int glPopMatrix () ;
 int glPushMatrix () ;
 int glRotatef (float,double,double,double) ;
 int glTranslatef (double,double,double) ;

void DrawBoingBall( void )
{
   GLfloat lon_deg;
   double dt_total, dt2;

   glPushMatrix();
   glMatrixMode( GL_MODELVIEW );




   glTranslatef( 0.0, 0.0, DIST_BALL );


   dt_total = dt;
   while( dt_total > 0.0 )
   {
       dt2 = dt_total > MAX_DELTA_T ? MAX_DELTA_T : dt_total;
       dt_total -= dt2;
       BounceBall( dt2 );
       deg_rot_y = TruncateDeg( deg_rot_y + deg_rot_y_inc*((float)dt2*ANIMATION_SPEED) );
   }


   glTranslatef( ball_x, ball_y, 0.0 );




   if ( drawBallHow == DRAW_BALL_SHADOW )
   {
      glTranslatef( SHADOW_OFFSET_X,
                    SHADOW_OFFSET_Y,
                    SHADOW_OFFSET_Z );
   }




   glRotatef( -20.0, 0.0, 0.0, 1.0 );




   glRotatef( deg_rot_y, 0.0, 1.0, 0.0 );




   glCullFace( GL_FRONT );
   glEnable( GL_CULL_FACE );
   glEnable( GL_NORMALIZE );





   for ( lon_deg = 0;
         lon_deg < 180;
         lon_deg += STEP_LONGITUDE )
   {



      DrawBoingBallBand( lon_deg,
                         lon_deg + STEP_LONGITUDE );
   }

   glPopMatrix();

   return;
}

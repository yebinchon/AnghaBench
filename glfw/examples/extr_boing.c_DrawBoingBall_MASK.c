#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int GLfloat ;

/* Variables and functions */
 float ANIMATION_SPEED ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 double DIST_BALL ; 
 scalar_t__ DRAW_BALL_SHADOW ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_NORMALIZE ; 
 double MAX_DELTA_T ; 
 double SHADOW_OFFSET_X ; 
 double SHADOW_OFFSET_Y ; 
 double SHADOW_OFFSET_Z ; 
 scalar_t__ STEP_LONGITUDE ; 
 float FUNC2 (float) ; 
 double ball_x ; 
 double ball_y ; 
 float deg_rot_y ; 
 float deg_rot_y_inc ; 
 scalar_t__ drawBallHow ; 
 double dt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (float,double,double,double) ; 
 int /*<<< orphan*/  FUNC9 (double,double,double) ; 

void FUNC10( void )
{
   GLfloat lon_deg;     /* degree of longitude */
   double dt_total, dt2;

   FUNC7();
   FUNC5( GL_MODELVIEW );

  /*
   * Another relative Z translation to separate objects.
   */
   FUNC9( 0.0, 0.0, DIST_BALL );

   /* Update ball position and rotation (iterate if necessary) */
   dt_total = dt;
   while( dt_total > 0.0 )
   {
       dt2 = dt_total > MAX_DELTA_T ? MAX_DELTA_T : dt_total;
       dt_total -= dt2;
       FUNC0( dt2 );
       deg_rot_y = FUNC2( deg_rot_y + deg_rot_y_inc*((float)dt2*ANIMATION_SPEED) );
   }

   /* Set ball position */
   FUNC9( ball_x, ball_y, 0.0 );

  /*
   * Offset the shadow.
   */
   if ( drawBallHow == DRAW_BALL_SHADOW )
   {
      FUNC9( SHADOW_OFFSET_X,
                    SHADOW_OFFSET_Y,
                    SHADOW_OFFSET_Z );
   }

  /*
   * Tilt the ball.
   */
   FUNC8( -20.0, 0.0, 0.0, 1.0 );

  /*
   * Continually rotate ball around Y axis.
   */
   FUNC8( deg_rot_y, 0.0, 1.0, 0.0 );

  /*
   * Set OpenGL state for Boing ball.
   */
   FUNC3( GL_FRONT );
   FUNC4( GL_CULL_FACE );
   FUNC4( GL_NORMALIZE );

  /*
   * Build a faceted latitude slice of the Boing ball,
   * stepping same-sized vertical bands of the sphere.
   */
   for ( lon_deg = 0;
         lon_deg < 180;
         lon_deg += STEP_LONGITUDE )
   {
     /*
      * Draw a latitude circle at this longitude.
      */
      FUNC1( lon_deg,
                         lon_deg + STEP_LONGITUDE );
   }

   FUNC6();

   return;
}
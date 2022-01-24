#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {float y; float x; float z; } ;
typedef  TYPE_1__ vertex_t ;
typedef  int GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__*) ; 
 scalar_t__ DRAW_BALL_SHADOW ; 
 int /*<<< orphan*/  GL_POLYGON ; 
 float RADIUS ; 
 int STEP_LATITUDE ; 
 int /*<<< orphan*/  STEP_LONGITUDE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ drawBallHow ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,float,float) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (float,float,float) ; 
 int /*<<< orphan*/  FUNC6 (float,float,float) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9( GLfloat long_lo,
                        GLfloat long_hi )
{
   vertex_t vert_ne;            /* "ne" means south-east, so on */
   vertex_t vert_nw;
   vertex_t vert_sw;
   vertex_t vert_se;
   vertex_t vert_norm;
   GLfloat  lat_deg;
   static int colorToggle = 0;

  /*
   * Iterate through the points of a latitude circle.
   * A latitude circle is a 2D set of X,Z points.
   */
   for ( lat_deg = 0;
         lat_deg <= (360 - STEP_LATITUDE);
         lat_deg += STEP_LATITUDE )
   {
     /*
      * Color this polygon with red or white.
      */
      if ( colorToggle )
         FUNC3( 0.8f, 0.1f, 0.1f );
      else
         FUNC3( 0.95f, 0.95f, 0.95f );
#if 0
      if ( lat_deg >= 180 )
         if ( colorToggle )
            glColor3f( 0.1f, 0.8f, 0.1f );
         else
            glColor3f( 0.5f, 0.5f, 0.95f );
#endif
      colorToggle = ! colorToggle;

     /*
      * Change color if drawing shadow.
      */
      if ( drawBallHow == DRAW_BALL_SHADOW )
         FUNC3( 0.35f, 0.35f, 0.35f );

     /*
      * Assign each Y.
      */
      vert_ne.y = vert_nw.y = (float) FUNC1(long_hi) * RADIUS;
      vert_sw.y = vert_se.y = (float) FUNC1(long_lo) * RADIUS;

     /*
      * Assign each X,Z with sin,cos values scaled by latitude radius indexed by longitude.
      * Eg, long=0 and long=180 are at the poles, so zero scale is sin(longitude),
      * while long=90 (sin(90)=1) is at equator.
      */
      vert_ne.x = (float) FUNC1( lat_deg                 ) * (RADIUS * (float) FUNC8( long_lo + STEP_LONGITUDE ));
      vert_se.x = (float) FUNC1( lat_deg                 ) * (RADIUS * (float) FUNC8( long_lo                  ));
      vert_nw.x = (float) FUNC1( lat_deg + STEP_LATITUDE ) * (RADIUS * (float) FUNC8( long_lo + STEP_LONGITUDE ));
      vert_sw.x = (float) FUNC1( lat_deg + STEP_LATITUDE ) * (RADIUS * (float) FUNC8( long_lo                  ));

      vert_ne.z = (float) FUNC8( lat_deg                 ) * (RADIUS * (float) FUNC8( long_lo + STEP_LONGITUDE ));
      vert_se.z = (float) FUNC8( lat_deg                 ) * (RADIUS * (float) FUNC8( long_lo                  ));
      vert_nw.z = (float) FUNC8( lat_deg + STEP_LATITUDE ) * (RADIUS * (float) FUNC8( long_lo + STEP_LONGITUDE ));
      vert_sw.z = (float) FUNC8( lat_deg + STEP_LATITUDE ) * (RADIUS * (float) FUNC8( long_lo                  ));

     /*
      * Draw the facet.
      */
      FUNC2( GL_POLYGON );

      FUNC0( vert_ne, vert_nw, vert_sw, &vert_norm );
      FUNC5( vert_norm.x, vert_norm.y, vert_norm.z );

      FUNC6( vert_ne.x, vert_ne.y, vert_ne.z );
      FUNC6( vert_nw.x, vert_nw.y, vert_nw.z );
      FUNC6( vert_sw.x, vert_sw.y, vert_sw.z );
      FUNC6( vert_se.x, vert_se.y, vert_se.z );

      FUNC4();

#if BOING_DEBUG
      printf( "----------------------------------------------------------- \n" );
      printf( "lat = %f  long_lo = %f  long_hi = %f \n", lat_deg, long_lo, long_hi );
      printf( "vert_ne  x = %.8f  y = %.8f  z = %.8f \n", vert_ne.x, vert_ne.y, vert_ne.z );
      printf( "vert_nw  x = %.8f  y = %.8f  z = %.8f \n", vert_nw.x, vert_nw.y, vert_nw.z );
      printf( "vert_se  x = %.8f  y = %.8f  z = %.8f \n", vert_se.x, vert_se.y, vert_se.z );
      printf( "vert_sw  x = %.8f  y = %.8f  z = %.8f \n", vert_sw.x, vert_sw.y, vert_sw.z );
#endif

   }

  /*
   * Toggle color so that next band will opposite red/white colors than this one.
   */
   colorToggle = ! colorToggle;

  /*
   * This circular band is done.
   */
   return;
}
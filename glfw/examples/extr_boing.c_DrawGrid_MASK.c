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
 int /*<<< orphan*/  DIST_BALL ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_POLYGON ; 
 int const GRID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int const) ; 

void FUNC8( void )
{
   int              row, col;
   const int        rowTotal    = 12;                   /* must be divisible by 2 */
   const int        colTotal    = rowTotal;             /* must be same as rowTotal */
   const GLfloat    widthLine   = 2.0;                  /* should be divisible by 2 */
   const GLfloat    sizeCell    = GRID_SIZE / rowTotal;
   const GLfloat    z_offset    = -40.0;
   GLfloat          xl, xr;
   GLfloat          yt, yb;

   FUNC5();
   FUNC2( GL_CULL_FACE );

  /*
   * Another relative Z translation to separate objects.
   */
   FUNC6( 0.0, 0.0, DIST_BALL );

  /*
   * Draw vertical lines (as skinny 3D rectangles).
   */
   for ( col = 0; col <= colTotal; col++ )
   {
     /*
      * Compute co-ords of line.
      */
      xl = -GRID_SIZE / 2 + col * sizeCell;
      xr = xl + widthLine;

      yt =  GRID_SIZE / 2;
      yb = -GRID_SIZE / 2 - widthLine;

      FUNC0( GL_POLYGON );

      FUNC1( 0.6f, 0.1f, 0.6f );               /* purple */

      FUNC7( xr, yt, z_offset );       /* NE */
      FUNC7( xl, yt, z_offset );       /* NW */
      FUNC7( xl, yb, z_offset );       /* SW */
      FUNC7( xr, yb, z_offset );       /* SE */

      FUNC3();
   }

  /*
   * Draw horizontal lines (as skinny 3D rectangles).
   */
   for ( row = 0; row <= rowTotal; row++ )
   {
     /*
      * Compute co-ords of line.
      */
      yt = GRID_SIZE / 2 - row * sizeCell;
      yb = yt - widthLine;

      xl = -GRID_SIZE / 2;
      xr =  GRID_SIZE / 2 + widthLine;

      FUNC0( GL_POLYGON );

      FUNC1( 0.6f, 0.1f, 0.6f );               /* purple */

      FUNC7( xr, yt, z_offset );       /* NE */
      FUNC7( xl, yt, z_offset );       /* NW */
      FUNC7( xl, yb, z_offset );       /* SW */
      FUNC7( xr, yb, z_offset );       /* SE */

      FUNC3();
   }

   FUNC4();

   return;
}
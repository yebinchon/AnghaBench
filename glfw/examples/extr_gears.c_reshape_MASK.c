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
typedef  int /*<<< orphan*/  GLint ;
typedef  float GLfloat ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  FUNC0 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5( GLFWwindow* window, int width, int height )
{
  GLfloat h = (GLfloat) height / (GLfloat) width;
  GLfloat xmax, znear, zfar;

  znear = 5.0f;
  zfar  = 30.0f;
  xmax  = znear * 0.5f;

  FUNC4( 0, 0, (GLint) width, (GLint) height );
  FUNC2( GL_PROJECTION );
  FUNC1();
  FUNC0( -xmax, xmax, -xmax*h, xmax*h, znear, zfar );
  FUNC2( GL_MODELVIEW );
  FUNC1();
  FUNC3( 0.0, 0.0, -20.0 );
}
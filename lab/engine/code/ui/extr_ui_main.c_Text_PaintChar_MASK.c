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
typedef  int /*<<< orphan*/  qhandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (float,float,float,float,float,float,float,float,int /*<<< orphan*/ ) ; 

void FUNC2(float x, float y, float width, float height, float scale, float s, float t, float s2, float t2, qhandle_t hShader) {
  float w, h;
  w = width * scale;
  h = height * scale;
  FUNC0( &x, &y, &w, &h );
  FUNC1( x, y, w, h, s, t, s2, t2, hShader );
}
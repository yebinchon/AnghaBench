#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int* picoColor_t ;
struct TYPE_4__ {scalar_t__ shader; } ;
typedef  TYPE_1__ T3dsLoaderPers ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC3( T3dsLoaderPers *pers ){
	/* todo: support all 3ds specific color formats; */
	/* that means: rgb,tru,trug,rgbg */

	/* get rgb color (range 0..255; 3 bytes) */
	picoColor_t color;

	color[0] = FUNC0( pers );
	color[1] = FUNC0( pers );
	color[2] = FUNC0( pers );
	color[3] = 255;

	/* store this as the current shader's diffuse color */
	if ( pers->shader ) {
		FUNC1( pers->shader,color );
	}
#ifdef DEBUG_PM_3DS
	printf( "GetDiffuseColor: %d %d %d\n",color[0],color[1],color[2] );
#endif
	/* success (no errors occured) */
	return 1;
}
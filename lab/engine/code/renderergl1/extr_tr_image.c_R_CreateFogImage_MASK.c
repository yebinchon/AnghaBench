#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int byte ;
struct TYPE_4__ {int* (* Hunk_AllocateTempMemory ) (int) ;int /*<<< orphan*/  (* Hunk_FreeTempMemory ) (int*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  fogImage; } ;

/* Variables and functions */
 int FOG_S ; 
 int FOG_T ; 
 int /*<<< orphan*/  IMGFLAG_CLAMPTOEDGE ; 
 int /*<<< orphan*/  IMGTYPE_COLORALPHA ; 
 int /*<<< orphan*/  FUNC0 (char*,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (int,int) ; 
 TYPE_2__ ri ; 
 int* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 TYPE_1__ tr ; 

__attribute__((used)) static void FUNC4( void ) {
	int		x,y;
	byte	*data;
	float	d;

	data = ri.Hunk_AllocateTempMemory( FOG_S * FOG_T * 4 );

	// S is distance, T is depth
	for (x=0 ; x<FOG_S ; x++) {
		for (y=0 ; y<FOG_T ; y++) {
			d = FUNC1( ( x + 0.5f ) / FOG_S, ( y + 0.5f ) / FOG_T );

			data[(y*FOG_S+x)*4+0] = 
			data[(y*FOG_S+x)*4+1] = 
			data[(y*FOG_S+x)*4+2] = 255;
			data[(y*FOG_S+x)*4+3] = 255*d;
		}
	}
	tr.fogImage = FUNC0("*fog", (byte *)data, FOG_S, FOG_T, IMGTYPE_COLORALPHA, IMGFLAG_CLAMPTOEDGE, 0 );
	ri.Hunk_FreeTempMemory( data );
}
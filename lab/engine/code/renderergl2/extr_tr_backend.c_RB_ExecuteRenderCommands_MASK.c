#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int msec; } ;
struct TYPE_8__ {TYPE_1__ pc; } ;
struct TYPE_7__ {int (* Milliseconds ) () ;} ;
struct TYPE_6__ {int /*<<< orphan*/  numIndexes; } ;

/* Variables and functions */
 void* FUNC0 (void const*,int) ; 
 void* FUNC1 (void const*) ; 
 void* FUNC2 (void const*) ; 
 void* FUNC3 (void const*) ; 
 void* FUNC4 (void const*) ; 
 void* FUNC5 (void const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 (void const*) ; 
 void* FUNC8 (void const*) ; 
 void* FUNC9 (void const*) ; 
 void* FUNC10 (void const*) ; 
 void* FUNC11 (void const*) ; 
 void* FUNC12 (void const*) ; 
 void* FUNC13 (void const*) ; 
#define  RC_CAPSHADOWMAP 140 
#define  RC_CLEARDEPTH 139 
#define  RC_COLORMASK 138 
#define  RC_DRAW_BUFFER 137 
#define  RC_DRAW_SURFS 136 
#define  RC_END_OF_LIST 135 
#define  RC_EXPORT_CUBEMAPS 134 
#define  RC_POSTPROCESS 133 
#define  RC_SCREENSHOT 132 
#define  RC_SET_COLOR 131 
#define  RC_STRETCH_PIC 130 
#define  RC_SWAP_BUFFERS 129 
#define  RC_VIDEOFRAME 128 
 TYPE_4__ backEnd ; 
 TYPE_3__ ri ; 
 int FUNC14 () ; 
 int FUNC15 () ; 
 TYPE_2__ tess ; 

void FUNC16( const void *data ) {
	int		t1, t2;

	t1 = ri.Milliseconds ();

	while ( 1 ) {
		data = FUNC0(data, sizeof(void *));

		switch ( *(const int *)data ) {
		case RC_SET_COLOR:
			data = FUNC9( data );
			break;
		case RC_STRETCH_PIC:
			data = FUNC10( data );
			break;
		case RC_DRAW_SURFS:
			data = FUNC5( data );
			break;
		case RC_DRAW_BUFFER:
			data = FUNC4( data );
			break;
		case RC_SWAP_BUFFERS:
			data = FUNC11( data );
			break;
		case RC_SCREENSHOT:
			data = FUNC12( data );
			break;
		case RC_VIDEOFRAME:
			data = FUNC13( data );
			break;
		case RC_COLORMASK:
			data = FUNC3(data);
			break;
		case RC_CLEARDEPTH:
			data = FUNC2(data);
			break;
		case RC_CAPSHADOWMAP:
			data = FUNC1(data);
			break;
		case RC_POSTPROCESS:
			data = FUNC8(data);
			break;
		case RC_EXPORT_CUBEMAPS:
			data = FUNC7(data);
			break;
		case RC_END_OF_LIST:
		default:
			// finish any 2D drawing if needed
			if(tess.numIndexes)
				FUNC6();

			// stop rendering
			t2 = ri.Milliseconds ();
			backEnd.pc.msec = t2 - t1;
			return;
		}
	}

}
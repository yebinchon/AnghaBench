#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_7__ {float uploadWidth; float uploadHeight; } ;
typedef  TYPE_1__ image_t ;
struct TYPE_11__ {int vidWidth; int vidHeight; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int (* Milliseconds ) () ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,int) ;} ;
struct TYPE_8__ {int numImages; TYPE_1__** images; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  TB_COLORMAP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float,float,int /*<<< orphan*/ ,int) ; 
 TYPE_5__ glConfig ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_4__* r_showImages ; 
 TYPE_3__ ri ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__ tr ; 

void FUNC9( void ) {
	int		i;
	image_t	*image;
	float	x, y, w, h;
	int		start, end;

	FUNC2();

	FUNC4( GL_COLOR_BUFFER_BIT );

	FUNC5();

	start = ri.Milliseconds();

	for ( i=0 ; i<tr.numImages ; i++ ) {
		image = tr.images[i];

		w = glConfig.vidWidth / 20;
		h = glConfig.vidHeight / 15;
		x = i % 20 * w;
		y = i / 20 * h;

		// show in proportional size in mode 2
		if ( r_showImages->integer == 2 ) {
			w *= image->uploadWidth / 512.0f;
			h *= image->uploadHeight / 512.0f;
		}

		{
			vec4_t quadVerts[4];

			FUNC0(image, TB_COLORMAP);

			FUNC3(quadVerts[0], x, y, 0, 1);
			FUNC3(quadVerts[1], x + w, y, 0, 1);
			FUNC3(quadVerts[2], x + w, y + h, 0, 1);
			FUNC3(quadVerts[3], x, y + h, 0, 1);

			FUNC1(quadVerts);
		}
	}

	FUNC5();

	end = ri.Milliseconds();
	ri.Printf( PRINT_ALL, "%i msec to draw all images\n", end - start );

}
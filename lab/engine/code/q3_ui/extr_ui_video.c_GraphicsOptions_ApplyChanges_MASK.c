#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  w ;
typedef  int /*<<< orphan*/  h ;
struct TYPE_20__ {scalar_t__ curvalue; } ;
struct TYPE_19__ {int curvalue; } ;
struct TYPE_18__ {int curvalue; } ;
struct TYPE_17__ {int curvalue; } ;
struct TYPE_16__ {int curvalue; } ;
struct TYPE_15__ {int curvalue; } ;
struct TYPE_14__ {int curvalue; } ;
struct TYPE_13__ {int curvalue; } ;
struct TYPE_12__ {int curvalue; } ;
struct TYPE_11__ {TYPE_9__ filter; TYPE_8__ geometry; TYPE_7__ lighting; TYPE_6__ colordepth; TYPE_5__ fs; TYPE_4__ mode; TYPE_3__ allow_extensions; TYPE_2__ tq; TYPE_1__ texturebits; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
 int FUNC1 (int) ; 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char** detectedResolutions ; 
 scalar_t__ resolutionsDetected ; 
 TYPE_10__ s_graphicsoptions ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void FUNC8( void *unused, int notification )
{
	if (notification != QM_ACTIVATED)
		return;

	switch ( s_graphicsoptions.texturebits.curvalue  )
	{
	case 0:
		FUNC7( "r_texturebits", 0 );
		break;
	case 1:
		FUNC7( "r_texturebits", 16 );
		break;
	case 2:
		FUNC7( "r_texturebits", 32 );
		break;
	}
	FUNC7( "r_picmip", 3 - s_graphicsoptions.tq.curvalue );
	FUNC7( "r_allowExtensions", s_graphicsoptions.allow_extensions.curvalue );

	if( resolutionsDetected )
	{
		// search for builtin mode that matches the detected mode
		int mode;
		if ( s_graphicsoptions.mode.curvalue == -1
			|| s_graphicsoptions.mode.curvalue >= FUNC0( detectedResolutions ) )
			s_graphicsoptions.mode.curvalue = 0;

		mode = FUNC1( s_graphicsoptions.mode.curvalue );
		if( mode == -1 )
		{
			char w[ 16 ], h[ 16 ];
			FUNC2( w, detectedResolutions[ s_graphicsoptions.mode.curvalue ], sizeof( w ) );
			*FUNC3( w, 'x' ) = 0;
			FUNC2( h,
					FUNC3( detectedResolutions[ s_graphicsoptions.mode.curvalue ], 'x' ) + 1, sizeof( h ) );
			FUNC6( "r_customwidth", w );
			FUNC6( "r_customheight", h );
		}

		FUNC7( "r_mode", mode );
	}
	else
		FUNC7( "r_mode", s_graphicsoptions.mode.curvalue );

	FUNC7( "r_fullscreen", s_graphicsoptions.fs.curvalue );
	switch ( s_graphicsoptions.colordepth.curvalue )
	{
	case 0:
		FUNC7( "r_colorbits", 0 );
		FUNC7( "r_depthbits", 0 );
		FUNC5( "r_stencilbits" );
		break;
	case 1:
		FUNC7( "r_colorbits", 16 );
		FUNC7( "r_depthbits", 16 );
		FUNC7( "r_stencilbits", 0 );
		break;
	case 2:
		FUNC7( "r_colorbits", 32 );
		FUNC7( "r_depthbits", 24 );
		FUNC7( "r_stencilbits", 8 );
		break;
	}
	FUNC7( "r_vertexLight", s_graphicsoptions.lighting.curvalue );

	if ( s_graphicsoptions.geometry.curvalue == 2 )
	{
		FUNC7( "r_lodBias", 0 );
		FUNC7( "r_subdivisions", 4 );
	}
	else if ( s_graphicsoptions.geometry.curvalue == 1 )
	{
		FUNC7( "r_lodBias", 1 );
		FUNC7( "r_subdivisions", 12 );
	}
	else
	{
		FUNC7( "r_lodBias", 1 );
		FUNC7( "r_subdivisions", 20 );
	}

	if ( s_graphicsoptions.filter.curvalue )
	{
		FUNC6( "r_textureMode", "GL_LINEAR_MIPMAP_LINEAR" );
	}
	else
	{
		FUNC6( "r_textureMode", "GL_LINEAR_MIPMAP_NEAREST" );
	}

	FUNC4( EXEC_APPEND, "vid_restart\n" );
}
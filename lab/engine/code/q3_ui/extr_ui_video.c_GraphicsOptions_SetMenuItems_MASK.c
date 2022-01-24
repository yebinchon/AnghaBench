#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_24__ {int curvalue; } ;
struct TYPE_23__ {int curvalue; } ;
struct TYPE_22__ {int curvalue; } ;
struct TYPE_21__ {int curvalue; } ;
struct TYPE_20__ {int curvalue; } ;
struct TYPE_19__ {int curvalue; } ;
struct TYPE_18__ {int curvalue; } ;
struct TYPE_17__ {int curvalue; } ;
struct TYPE_16__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_14__ {int curvalue; } ;
struct TYPE_13__ {int curvalue; } ;
struct TYPE_15__ {TYPE_11__ colordepth; TYPE_10__ driver; TYPE_9__ fs; TYPE_8__ geometry; TYPE_7__ filter; TYPE_6__ texturebits; TYPE_5__ lighting; TYPE_4__ tq; TYPE_3__ allow_extensions; TYPE_2__ mode; TYPE_1__ ratio; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*) ; 
 char** detectedResolutions ; 
 int /*<<< orphan*/ * resToRatio ; 
 scalar_t__ resolutionsDetected ; 
 TYPE_12__ s_graphicsoptions ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6( void )
{
	s_graphicsoptions.mode.curvalue =
		FUNC0( FUNC5( "r_mode" ) );

	if ( s_graphicsoptions.mode.curvalue < 0 )
	{
		if( resolutionsDetected )
		{
			int i;
			char buf[MAX_STRING_CHARS];
			FUNC4("r_customwidth", buf, sizeof(buf)-2);
			buf[FUNC3(buf)+1] = 0;
			buf[FUNC3(buf)] = 'x';
			FUNC4("r_customheight", buf+FUNC3(buf), sizeof(buf)-FUNC3(buf));

			for(i = 0; detectedResolutions[i]; ++i)
			{
				if(!FUNC1(buf, detectedResolutions[i]))
				{
					s_graphicsoptions.mode.curvalue = i;
					break;
				}
			}
			if ( s_graphicsoptions.mode.curvalue < 0 )
				s_graphicsoptions.mode.curvalue = 0;
		}
		else
		{
			s_graphicsoptions.mode.curvalue = 3;
		}
	}
	s_graphicsoptions.ratio.curvalue =
		resToRatio[ s_graphicsoptions.mode.curvalue ];
	s_graphicsoptions.fs.curvalue = FUNC5("r_fullscreen");
	s_graphicsoptions.allow_extensions.curvalue = FUNC5("r_allowExtensions");
	s_graphicsoptions.tq.curvalue = 3-FUNC5( "r_picmip");
	if ( s_graphicsoptions.tq.curvalue < 0 )
	{
		s_graphicsoptions.tq.curvalue = 0;
	}
	else if ( s_graphicsoptions.tq.curvalue > 3 )
	{
		s_graphicsoptions.tq.curvalue = 3;
	}

	s_graphicsoptions.lighting.curvalue = FUNC5( "r_vertexLight" ) != 0;
	switch ( ( int ) FUNC5( "r_texturebits" ) )
	{
	default:
	case 0:
		s_graphicsoptions.texturebits.curvalue = 0;
		break;
	case 16:
		s_graphicsoptions.texturebits.curvalue = 1;
		break;
	case 32:
		s_graphicsoptions.texturebits.curvalue = 2;
		break;
	}

	if ( !FUNC1( FUNC2( "r_textureMode" ), "GL_LINEAR_MIPMAP_NEAREST" ) )
	{
		s_graphicsoptions.filter.curvalue = 0;
	}
	else
	{
		s_graphicsoptions.filter.curvalue = 1;
	}

	if ( FUNC5( "r_lodBias" ) > 0 )
	{
		if ( FUNC5( "r_subdivisions" ) >= 20 )
		{
			s_graphicsoptions.geometry.curvalue = 0;
		}
		else
		{
			s_graphicsoptions.geometry.curvalue = 1;
		}
	}
	else
	{
		s_graphicsoptions.geometry.curvalue = 2;
	}

	switch ( ( int ) FUNC5( "r_colorbits" ) )
	{
	default:
	case 0:
		s_graphicsoptions.colordepth.curvalue = 0;
		break;
	case 16:
		s_graphicsoptions.colordepth.curvalue = 1;
		break;
	case 32:
		s_graphicsoptions.colordepth.curvalue = 2;
		break;
	}

	if ( s_graphicsoptions.fs.curvalue == 0 )
	{
		s_graphicsoptions.colordepth.curvalue = 0;
	}
	if ( s_graphicsoptions.driver.curvalue == 1 )
	{
		s_graphicsoptions.colordepth.curvalue = 1;
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* lightGridSize; int /*<<< orphan*/  entityString; int /*<<< orphan*/  entityParsePoint; } ;
typedef  TYPE_1__ world_t ;
typedef  int /*<<< orphan*/  value ;
struct TYPE_9__ {scalar_t__ filelen; scalar_t__ fileofs; } ;
typedef  TYPE_2__ lump_t ;
typedef  int /*<<< orphan*/  keyname ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,char*) ;int /*<<< orphan*/  (* Hunk_Alloc ) (scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {int /*<<< orphan*/ * autoExposureMinMax; } ;

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 scalar_t__ fileBase ; 
 int /*<<< orphan*/  h_low ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_6__* r_vertexLight ; 
 TYPE_5__ ri ; 
 TYPE_1__ s_worldData ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int*,int*,...) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_3__ tr ; 

void FUNC12( lump_t *l ) {
	char *p, *token, *s;
	char keyname[MAX_TOKEN_CHARS];
	char value[MAX_TOKEN_CHARS];
	world_t	*w;

	w = &s_worldData;
	w->lightGridSize[0] = 64;
	w->lightGridSize[1] = 64;
	w->lightGridSize[2] = 128;

	p = (char *)(fileBase + l->fileofs);

	// store for reference by the cgame
	w->entityString = ri.Hunk_Alloc( l->filelen + 1, h_low );
	FUNC7( w->entityString, p );
	w->entityParsePoint = w->entityString;

	token = FUNC0( &p, qtrue );
	if (!*token || *token != '{') {
		return;
	}

	// only parse the world spawn
	while ( 1 ) {	
		// parse key
		token = FUNC0( &p, qtrue );

		if ( !*token || *token == '}' ) {
			break;
		}
		FUNC3(keyname, token, sizeof(keyname));

		// parse value
		token = FUNC0( &p, qtrue );

		if ( !*token || *token == '}' ) {
			break;
		}
		FUNC3(value, token, sizeof(value));

		// check for remapping of shaders for vertex lighting
		s = "vertexremapshader";
		if (!FUNC2(keyname, s, FUNC8(s)) ) {
			s = FUNC6(value, ';');
			if (!s) {
				ri.Printf( PRINT_WARNING, "WARNING: no semi colon in vertexshaderremap '%s'\n", value );
				break;
			}
			*s++ = 0;
			if (r_vertexLight->integer) {
				FUNC4(value, s, "0");
			}
			continue;
		}
		// check for remapping of shaders
		s = "remapshader";
		if (!FUNC2(keyname, s, FUNC8(s)) ) {
			s = FUNC6(value, ';');
			if (!s) {
				ri.Printf( PRINT_WARNING, "WARNING: no semi colon in shaderremap '%s'\n", value );
				break;
			}
			*s++ = 0;
			FUNC4(value, s, "0");
			continue;
		}
		// check for a different grid size
		if (!FUNC1(keyname, "gridsize")) {
			FUNC5(value, "%f %f %f", &w->lightGridSize[0], &w->lightGridSize[1], &w->lightGridSize[2] );
			continue;
		}

		// check for auto exposure
		if (!FUNC1(keyname, "autoExposureMinMax")) {
			FUNC5(value, "%f %f", &tr.autoExposureMinMax[0], &tr.autoExposureMinMax[1]);
			continue;
		}
	}
}
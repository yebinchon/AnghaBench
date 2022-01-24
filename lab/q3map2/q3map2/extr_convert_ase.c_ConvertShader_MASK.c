#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* shader; double* color; TYPE_1__* shaderImage; } ;
typedef  TYPE_2__ shaderInfo_t ;
struct TYPE_8__ {char* shader; } ;
typedef  TYPE_3__ bspShader_t ;
struct TYPE_6__ {char* filename; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_WRN ; 
 TYPE_2__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5( FILE *f, bspShader_t *shader, int shaderNum ){
	shaderInfo_t    *si;
	char            *c, filename[ 1024 ];


	/* get shader */
	si = FUNC0( shader->shader );
	if ( si == NULL ) {
		FUNC1( SYS_WRN, "WARNING: NULL shader in BSP\n" );
		return;
	}

	/* set bitmap filename */
	if ( si->shaderImage->filename[ 0 ] != '*' ) {
		FUNC4( filename, si->shaderImage->filename );
	}
	else{
		FUNC3( filename, "%s.tga", si->shader );
	}
	for ( c = filename; *c != '\0'; c++ )
		if ( *c == '/' ) {
			*c = '\\';
		}

	/* print shader info */
	FUNC2( f, "\t*MATERIAL\t%d\t{\r\n", shaderNum );
	FUNC2( f, "\t\t*MATERIAL_NAME\t\"%s\"\r\n", shader->shader );
	FUNC2( f, "\t\t*MATERIAL_CLASS\t\"Standard\"\r\n" );
	FUNC2( f, "\t\t*MATERIAL_DIFFUSE\t%f\t%f\t%f\r\n", si->color[ 0 ], si->color[ 1 ], si->color[ 2 ] );
	FUNC2( f, "\t\t*MATERIAL_SHADING Phong\r\n" );

	/* print map info */
	FUNC2( f, "\t\t*MAP_DIFFUSE\t{\r\n" );
	FUNC2( f, "\t\t\t*MAP_NAME\t\"%s\"\r\n", shader->shader );
	FUNC2( f, "\t\t\t*MAP_CLASS\t\"Bitmap\"\r\n" );
	FUNC2( f, "\t\t\t*MAP_SUBNO\t1\r\n" );
	FUNC2( f, "\t\t\t*MAP_AMOUNT\t1.0\r\n" );
	FUNC2( f, "\t\t\t*MAP_TYPE\tScreen\r\n" );
	FUNC2( f, "\t\t\t*BITMAP\t\"..\\%s\"\r\n", filename );
	FUNC2( f, "\t\t\t*BITMAP_FILTER\tPyramidal\r\n" );
	FUNC2( f, "\t\t}\r\n" );

	FUNC2( f, "\t}\r\n" );
}
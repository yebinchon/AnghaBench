#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* shaderText; scalar_t__ implicitMap; char* implicitImagePath; char* shader; scalar_t__ custom; } ;
typedef  TYPE_1__ shaderInfo_t ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ IM_BLEND ; 
 scalar_t__ IM_MASKED ; 
 scalar_t__ IM_OPAQUE ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,unsigned char*) ; 
 TYPE_1__* FUNC2 (char*) ; 
 char* mapName ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ qtrue ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 size_t FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 

shaderInfo_t *FUNC10( shaderInfo_t *si, char *find, char *replace ){
	shaderInfo_t    *csi;
	char shader[ MAX_QPATH ];
	char            *s;
	int loc;
	byte digest[ 16 ];
	char            *srcShaderText, temp[ 8192 ], shaderText[ 8192 ];   /* ydnar: fixme (make this bigger?) */


	/* dummy check */
	if ( si == NULL ) {
		return FUNC2( "default" );
	}

	/* default shader text source */
	srcShaderText = si->shaderText;

	/* et: implicitMap */
	if ( si->implicitMap == IM_OPAQUE ) {
		srcShaderText = temp;
		FUNC5( temp, "\n"
					   "{ // Q3Map2 defaulted (implicitMap)\n"
					   "\t{\n"
					   "\t\tmap $lightmap\n"
					   "\t\trgbGen identity\n"
					   "\t}\n"
					   "\tq3map_styleMarker\n"
					   "\t{\n"
					   "\t\tmap %s\n"
					   "\t\tblendFunc GL_DST_COLOR GL_ZERO\n"
					   "\t\trgbGen identity\n"
					   "\t}\n"
					   "}\n",
				 si->implicitImagePath );
	}

	/* et: implicitMask */
	else if ( si->implicitMap == IM_MASKED ) {
		srcShaderText = temp;
		FUNC5( temp, "\n"
					   "{ // Q3Map2 defaulted (implicitMask)\n"
					   "\tcull none\n"
					   "\t{\n"
					   "\t\tmap %s\n"
					   "\t\talphaFunc GE128\n"
					   "\t\tdepthWrite\n"
					   "\t}\n"
					   "\t{\n"
					   "\t\tmap $lightmap\n"
					   "\t\trgbGen identity\n"
					   "\t\tdepthFunc equal\n"
					   "\t}\n"
					   "\tq3map_styleMarker\n"
					   "\t{\n"
					   "\t\tmap %s\n"
					   "\t\tblendFunc GL_DST_COLOR GL_ZERO\n"
					   "\t\tdepthFunc equal\n"
					   "\t\trgbGen identity\n"
					   "\t}\n"
					   "}\n",
				 si->implicitImagePath,
				 si->implicitImagePath );
	}

	/* et: implicitBlend */
	else if ( si->implicitMap == IM_BLEND ) {
		srcShaderText = temp;
		FUNC5( temp, "\n"
					   "{ // Q3Map2 defaulted (implicitBlend)\n"
					   "\tcull none\n"
					   "\t{\n"
					   "\t\tmap %s\n"
					   "\t\tblendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA\n"
					   "\t}\n"
					   "\t{\n"
					   "\t\tmap $lightmap\n"
					   "\t\trgbGen identity\n"
					   "\t\tblendFunc GL_DST_COLOR GL_ZERO\n"
					   "\t}\n"
					   "\tq3map_styleMarker\n"
					   "}\n",
				 si->implicitImagePath );
	}

	/* default shader text */
	else if ( srcShaderText == NULL ) {
		srcShaderText = temp;
		FUNC5( temp, "\n"
					   "{ // Q3Map2 defaulted\n"
					   "\t{\n"
					   "\t\tmap $lightmap\n"
					   "\t\trgbGen identity\n"
					   "\t}\n"
					   "\tq3map_styleMarker\n"
					   "\t{\n"
					   "\t\tmap %s.tga\n"
					   "\t\tblendFunc GL_DST_COLOR GL_ZERO\n"
					   "\t\trgbGen identity\n"
					   "\t}\n"
					   "}\n",
				 si->shader );
	}

	/* error check */
	if ( ( FUNC8( mapName ) + 1 + 32 ) > MAX_QPATH ) {
		FUNC0( "Custom shader name length (%d) exceeded. Shorten your map name.\n", MAX_QPATH );
	}

	/* do some bad find-replace */
	s = FUNC9( srcShaderText, find );
	if ( s == NULL ) {
		//%	strcpy( shaderText, srcShaderText );
		return si;  /* testing just using the existing shader if this fails */
	}
	else
	{
		/* substitute 'find' with 'replace' */
		loc = s - srcShaderText;
		FUNC7( shaderText, srcShaderText );
		shaderText[ loc ] = '\0';
		FUNC6( shaderText, replace );
		FUNC6( shaderText, &srcShaderText[ loc + FUNC8( find ) ] );
	}

	/* make md5 hash of the shader text */
	FUNC1( shaderText, FUNC8( shaderText ), (unsigned char *) &digest );

	/* mangle hash into a shader name */
	FUNC5( shader, "%s/%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X", mapName,
			 digest[ 0 ], digest[ 1 ], digest[ 2 ], digest[ 3 ], digest[ 4 ], digest[ 5 ], digest[ 6 ], digest[ 7 ],
			 digest[ 8 ], digest[ 9 ], digest[ 10 ], digest[ 11 ], digest[ 12 ], digest[ 13 ], digest[ 14 ], digest[ 15 ] );

	/* get shader */
	csi = FUNC2( shader );

	/* might be a preexisting shader */
	if ( csi->custom ) {
		return csi;
	}

	/* clone the existing shader and rename */
	FUNC3( csi, si, sizeof( shaderInfo_t ) );
	FUNC7( csi->shader, shader );
	csi->custom = qtrue;

	/* store new shader text */
	csi->shaderText = FUNC4( FUNC8( shaderText ) + 1 );
	FUNC7( csi->shaderText, shaderText );  /* LEAK! */

	/* return it */
	return csi;
}
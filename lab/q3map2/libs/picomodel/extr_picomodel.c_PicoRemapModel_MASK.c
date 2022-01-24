#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* picoVec3_t ;
typedef  int /*<<< orphan*/  picoShader_t ;
struct TYPE_9__ {char* token; } ;
typedef  TYPE_1__ picoParser_t ;
typedef  int /*<<< orphan*/  picoModel_t ;
typedef  int* picoColor_t ;
typedef  int picoByte_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int**,int*) ; 
 TYPE_1__* FUNC11 (int*,int) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  _prm_error_return ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

int FUNC20( picoModel_t *model, char *remapFile ){
	picoParser_t    *p;
	picoByte_t      *remapBuffer;
	int remapBufSize;


	/* sanity checks */
	if ( model == NULL || remapFile == NULL ) {
		return 0;
	}

	/* load remap file contents */
	FUNC10( remapFile, &remapBuffer, &remapBufSize );

	/* check result */
	if ( remapBufSize == 0 ) {
		return 1;   /* file is empty: no error */
	}
	if ( remapBufSize < 0 ) {
		return 0;   /* load failed: error */

	}
	/* create a new pico parser */
	p = FUNC11( remapBuffer, remapBufSize );
	if ( p == NULL ) {
		/* ram is really cheap nowadays... */
		_prm_error_return;
	}

	/* doo teh parse */
	while ( 1 )
	{
		/* get next token in remap file */
		if ( !FUNC12( p, 1 ) ) {
			break;
		}

		/* skip over c++ style comment lines */
		if ( !FUNC17( p->token, "//" ) ) {
			FUNC15( p );
			continue;
		}

		/* block for quick material shader name remapping */
		/* materials { "m" (=>|->|=) "s" } */
		if ( !FUNC17( p->token, "materials" ) ) {
			int level = 1;

			/* check bracket */
			if ( !FUNC13( p, 1, "{" ) ) {
				_prm_error_return;
			}

			/* process assignments */
			while ( 1 )
			{
				picoShader_t    *shader;
				char            *materialName;

				/* get material name */
				if ( FUNC12( p, 1 ) == NULL ) {
					break;
				}
				if ( !FUNC19( p->token ) ) {
					continue;
				}
				materialName = FUNC6( p->token );
				if ( materialName == NULL ) {
					_prm_error_return;
				}

				/* handle levels */
				if ( p->token[0] == '{' ) {
					level++;
				}
				if ( p->token[0] == '}' ) {
					level--;
				}
				if ( !level ) {
					break;
				}

				/* get next token (assignment token or shader name) */
				if ( !FUNC12( p, 0 ) ) {
					FUNC7( materialName );
					_prm_error_return;
				}
				/* skip assignment token (if present) */
				if ( !FUNC18( p->token, "=>" ) ||
					 !FUNC18( p->token, "->" ) ||
					 !FUNC18( p->token, "=" ) ) {
					/* simply grab the next token */
					if ( !FUNC12( p, 0 ) ) {
						FUNC7( materialName );
						_prm_error_return;
					}
				}
				/* try to find material by name */
				shader = FUNC0( model, materialName, 0 );

				/* we've found a material matching the name */
				if ( shader != NULL ) {
					FUNC4( shader, p->token );
				}
				/* free memory used by material name */
				FUNC7( materialName );

				/* skip rest */
				FUNC15( p );
			}
		}
		/* block for detailed single material remappings */
		/* materials[ "m" ] { key data... } */
		else if ( !FUNC17( p->token, "materials[" ) ) {
			picoShader_t *shader;
			char *tempMaterialName;
			int level = 1;

			/* get material name */
			if ( !FUNC12( p, 0 ) ) {
				_prm_error_return;
			}

			/* temporary copy of material name */
			tempMaterialName = FUNC6( p->token );
			if ( tempMaterialName == NULL ) {
				_prm_error_return;
			}

			/* check square closing bracket */
			if ( !FUNC13( p, 0, "]" ) ) {
				_prm_error_return;
			}

			/* try to find material by name */
			shader = FUNC0( model, tempMaterialName, 0 );

			/* free memory used by temporary material name */
			FUNC7( tempMaterialName );

			/* we haven't found a material matching the name */
			/* so we simply skip the braced section now and */
			/* continue parsing with the next main token */
			if ( shader == NULL ) {
				FUNC14( p );
				continue;
			}
			/* check opening bracket */
			if ( !FUNC13( p, 1, "{" ) ) {
				_prm_error_return;
			}

			/* process material info keys */
			while ( 1 )
			{
				/* get key name */
				if ( FUNC12( p, 1 ) == NULL ) {
					break;
				}
				if ( !FUNC19( p->token ) ) {
					continue;
				}

				/* handle levels */
				if ( p->token[0] == '{' ) {
					level++;
				}
				if ( p->token[0] == '}' ) {
					level--;
				}
				if ( !level ) {
					break;
				}

				/* remap shader name */
				if ( !FUNC17( p->token, "shader" ) ) {
					if ( !FUNC12( p, 0 ) ) {
						_prm_error_return;
					}
					FUNC4( shader, p->token );
				}
				/* remap shader map name */
				else if ( !FUNC17( p->token, "mapname" ) ) {
					if ( !FUNC12( p, 0 ) ) {
						_prm_error_return;
					}
					FUNC3( shader, p->token );
				}
				/* remap shader's ambient color */
				else if ( !FUNC17( p->token, "ambient" ) ) {
					picoColor_t color;
					picoVec3_t v;

					/* get vector from parser */
					if ( !FUNC16( p, v ) ) {
						_prm_error_return;
					}

					/* store as color */
					color[ 0 ] = (picoByte_t)v[ 0 ];
					color[ 1 ] = (picoByte_t)v[ 1 ];
					color[ 2 ] = (picoByte_t)v[ 2 ];
					color[ 3 ] = 1;

					/* set new ambient color */
					FUNC1( shader, color );
				}
				/* remap shader's diffuse color */
				else if ( !FUNC17( p->token, "diffuse" ) ) {
					picoColor_t color;
					picoVec3_t v;

					/* get vector from parser */
					if ( !FUNC16( p, v ) ) {
						_prm_error_return;
					}

					/* store as color */
					color[ 0 ] = (picoByte_t)v[ 0 ];
					color[ 1 ] = (picoByte_t)v[ 1 ];
					color[ 2 ] = (picoByte_t)v[ 2 ];
					color[ 3 ] = 1;

					/* set new ambient color */
					FUNC2( shader, color );
				}
				/* remap shader's specular color */
				else if ( !FUNC17( p->token, "specular" ) ) {
					picoColor_t color;
					picoVec3_t v;

					/* get vector from parser */
					if ( !FUNC16( p,v ) ) {
						_prm_error_return;
					}

					/* store as color */
					color[ 0 ] = (picoByte_t)v[ 0 ];
					color[ 1 ] = (picoByte_t)v[ 1 ];
					color[ 2 ] = (picoByte_t)v[ 2 ];
					color[ 3 ] = 1;

					/* set new ambient color */
					FUNC5( shader, color );
				}
				/* skip rest */
				FUNC15( p );
			}
		}
		/* end 'materials[' */
	}

	/* free both parser and file buffer */
	FUNC9( p );
	FUNC8( remapBuffer );

	/* return with success */
	return 1;
}
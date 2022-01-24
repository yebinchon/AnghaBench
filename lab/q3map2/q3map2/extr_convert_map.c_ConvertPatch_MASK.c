#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_7__ {char* shader; } ;
typedef  TYPE_1__ bspShader_t ;
struct TYPE_8__ {double* st; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_2__ bspDrawVert_t ;
struct TYPE_9__ {scalar_t__ surfaceType; size_t shaderNum; int patchWidth; int patchHeight; int firstVert; } ;
typedef  TYPE_3__ bspDrawSurface_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ MST_PATCH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (double*,int /*<<< orphan*/ ,double*) ; 
 TYPE_2__* bspDrawVerts ; 
 TYPE_1__* bspShaders ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 size_t numBSPShaders ; 

__attribute__((used)) static void FUNC3( FILE *f, int num, bspDrawSurface_t *ds, vec3_t origin ){
	int x, y;
	bspShader_t     *shader;
	char            *texture;
	bspDrawVert_t   *dv;
	vec3_t xyz;


	/* only patches */
	if ( ds->surfaceType != MST_PATCH ) {
		return;
	}

	/* get shader */
	if ( ds->shaderNum < 0 || ds->shaderNum >= numBSPShaders ) {
		return;
	}
	shader = &bspShaders[ ds->shaderNum ];

	/* get texture name */
	if ( !FUNC0( shader->shader, "textures/", 9 ) ) {
		texture = shader->shader + 9;
	}
	else{
		texture = shader->shader;
	}

	/* start patch */
	FUNC2( f, "\t// patch %d\n", num );
	FUNC2( f, "\t{\n" );
	FUNC2( f, "\t\tpatchDef2\n" );
	FUNC2( f, "\t\t{\n" );
	FUNC2( f, "\t\t\t%s\n", texture );
	FUNC2( f, "\t\t\t( %d %d 0 0 0 )\n", ds->patchWidth, ds->patchHeight );
	FUNC2( f, "\t\t\t(\n" );

	/* iterate through the verts */
	for ( x = 0; x < ds->patchWidth; x++ )
	{
		/* start row */
		FUNC2( f, "\t\t\t\t(" );

		/* iterate through the row */
		for ( y = 0; y < ds->patchHeight; y++ )
		{
			/* get vert */
			dv = &bspDrawVerts[ ds->firstVert + ( y * ds->patchWidth ) + x ];

			/* offset it */
			FUNC1( origin, dv->xyz, xyz );

			/* print vertex */
			FUNC2( f, " ( %f %f %f %f %f )", xyz[ 0 ], xyz[ 1 ], xyz[ 2 ], dv->st[ 0 ], dv->st[ 1 ] );
		}

		/* end row */
		FUNC2( f, " )\n" );
	}

	/* end patch */
	FUNC2( f, "\t\t\t)\n" );
	FUNC2( f, "\t\t}\n" );
	FUNC2( f, "\t}\n\n" );
}
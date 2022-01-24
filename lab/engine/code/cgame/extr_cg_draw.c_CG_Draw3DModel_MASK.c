#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_9__ {int fov_x; int fov_y; float x; float y; float width; float height; int /*<<< orphan*/  time; int /*<<< orphan*/  viewaxis; int /*<<< orphan*/  rdflags; int /*<<< orphan*/  renderfx; void* customSkin; void* hModel; int /*<<< orphan*/  origin; int /*<<< orphan*/  axis; } ;
typedef  TYPE_1__ refdef_t ;
typedef  int /*<<< orphan*/  refdef ;
typedef  TYPE_1__ refEntity_t ;
typedef  void* qhandle_t ;
typedef  int /*<<< orphan*/  ent ;
struct TYPE_12__ {int /*<<< orphan*/  time; } ;
struct TYPE_11__ {int /*<<< orphan*/  integer; } ;
struct TYPE_10__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*,float*) ; 
 int /*<<< orphan*/  RDF_NOWORLDMODEL ; 
 int /*<<< orphan*/  RF_NOSHADOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__ cg ; 
 TYPE_7__ cg_draw3dIcons ; 
 TYPE_6__ cg_drawIcons ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8( float x, float y, float w, float h, qhandle_t model, qhandle_t skin, vec3_t origin, vec3_t angles ) {
	refdef_t		refdef;
	refEntity_t		ent;

	if ( !cg_draw3dIcons.integer || !cg_drawIcons.integer ) {
		return;
	}

	FUNC2( &x, &y, &w, &h );

	FUNC4( &refdef, 0, sizeof( refdef ) );

	FUNC4( &ent, 0, sizeof( ent ) );
	FUNC0( angles, ent.axis );
	FUNC3( origin, ent.origin );
	ent.hModel = model;
	ent.customSkin = skin;
	ent.renderfx = RF_NOSHADOW;		// no stencil shadows

	refdef.rdflags = RDF_NOWORLDMODEL;

	FUNC1( refdef.viewaxis );

	refdef.fov_x = 30;
	refdef.fov_y = 30;

	refdef.x = x;
	refdef.y = y;
	refdef.width = w;
	refdef.height = h;

	refdef.time = cg.time;

	FUNC6();
	FUNC5( &ent );
	FUNC7( &refdef );
}
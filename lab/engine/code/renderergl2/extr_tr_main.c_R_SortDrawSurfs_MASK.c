#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ sort; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ shader_t ;
struct TYPE_14__ {int /*<<< orphan*/  sort; } ;
typedef  TYPE_3__ drawSurf_t ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int flags; } ;
struct TYPE_15__ {TYPE_1__ viewParms; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,TYPE_2__**,int*,int*,int*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 scalar_t__ SS_BAD ; 
 scalar_t__ SS_PORTAL ; 
 int VPF_DEPTHSHADOW ; 
 int VPF_SHADOWMAP ; 
 TYPE_6__* r_portalOnly ; 
 TYPE_5__ ri ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__ tr ; 

void FUNC5( drawSurf_t *drawSurfs, int numDrawSurfs ) {
	shader_t		*shader;
	int				fogNum;
	int				entityNum;
	int				dlighted;
	int             pshadowed;
	int				i;

	//ri.Printf(PRINT_ALL, "firstDrawSurf %d numDrawSurfs %d\n", (int)(drawSurfs - tr.refdef.drawSurfs), numDrawSurfs);

	// it is possible for some views to not have any surfaces
	if ( numDrawSurfs < 1 ) {
		// we still need to add it for hyperspace cases
		FUNC0( drawSurfs, numDrawSurfs );
		return;
	}

	// sort the drawsurfs by sort type, then orientation, then shader
	FUNC3( drawSurfs, numDrawSurfs );

	// skip pass through drawing if rendering a shadow map
	if (tr.viewParms.flags & (VPF_SHADOWMAP | VPF_DEPTHSHADOW))
	{
		FUNC0( drawSurfs, numDrawSurfs );
		return;
	}

	// check for any pass through drawing, which
	// may cause another view to be rendered first
	for ( i = 0 ; i < numDrawSurfs ; i++ ) {
		FUNC1( (drawSurfs+i)->sort, &entityNum, &shader, &fogNum, &dlighted, &pshadowed );

		if ( shader->sort > SS_PORTAL ) {
			break;
		}

		// no shader should ever have this sort type
		if ( shader->sort == SS_BAD ) {
			ri.Error (ERR_DROP, "Shader '%s'with sort == SS_BAD", shader->name );
		}

		// if the mirror was completely clipped away, we may need to check another surface
		if ( FUNC2( (drawSurfs+i), entityNum) ) {
			// this is a debug option to see exactly what is being mirrored
			if ( r_portalOnly->integer ) {
				return;
			}
			break;		// only one mirror view at a time
		}
	}

	FUNC0( drawSurfs, numDrawSurfs );
}
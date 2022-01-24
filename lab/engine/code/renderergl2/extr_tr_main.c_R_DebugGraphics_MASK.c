#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  integer; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* CM_DrawDebugSurface ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int rdflags; } ;
struct TYPE_6__ {int /*<<< orphan*/  whiteImage; TYPE_1__ refdef; } ;

/* Variables and functions */
 int /*<<< orphan*/  CT_FRONT_SIDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int RDF_NOWORLDMODEL ; 
 int /*<<< orphan*/  R_DebugPolygon ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  TB_COLORMAP ; 
 TYPE_4__* r_debugSurface ; 
 TYPE_3__ ri ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ tr ; 

void FUNC4( void ) {
	if ( tr.refdef.rdflags & RDF_NOWORLDMODEL ) {
		return;
	}
	if ( !r_debugSurface->integer ) {
		return;
	}

	FUNC2();

	FUNC0(tr.whiteImage, TB_COLORMAP);
	FUNC1( CT_FRONT_SIDED );
	ri.CM_DrawDebugSurface( R_DebugPolygon );
}
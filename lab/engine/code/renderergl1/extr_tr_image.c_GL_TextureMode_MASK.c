#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ image_t ;
struct TYPE_11__ {scalar_t__ hardwareType; } ;
struct TYPE_10__ {int /*<<< orphan*/  maximize; int /*<<< orphan*/  minimize; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_8__ {int numImages; TYPE_1__** images; } ;

/* Variables and functions */
 scalar_t__ GLHW_3DFX_2D3D ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int IMGFLAG_MIPMAP ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_5__ glConfig ; 
 int /*<<< orphan*/  gl_filter_max ; 
 int /*<<< orphan*/  gl_filter_min ; 
 TYPE_4__* modes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ ri ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ tr ; 

void FUNC5( const char *string ) {
	int		i;
	image_t	*glt;

	for ( i=0 ; i< 6 ; i++ ) {
		if ( !FUNC1( modes[i].name, string ) ) {
			break;
		}
	}

	// hack to prevent trilinear from being set on voodoo,
	// because their driver freaks...
	if ( i == 5 && glConfig.hardwareType == GLHW_3DFX_2D3D ) {
		ri.Printf( PRINT_ALL, "Refusing to set trilinear on a voodoo.\n" );
		i = 3;
	}


	if ( i == 6 ) {
		ri.Printf (PRINT_ALL, "bad filter name\n");
		return;
	}

	gl_filter_min = modes[i].minimize;
	gl_filter_max = modes[i].maximize;

	// change all the existing mipmap texture objects
	for ( i = 0 ; i < tr.numImages ; i++ ) {
		glt = tr.images[ i ];
		if ( glt->flags & IMGFLAG_MIPMAP ) {
			FUNC0 (glt);
			FUNC2(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, gl_filter_min);
			FUNC2(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, gl_filter_max);
		}
	}
}
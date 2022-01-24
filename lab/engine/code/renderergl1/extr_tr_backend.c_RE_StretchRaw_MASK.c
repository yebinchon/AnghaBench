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
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_7__ {int (* Milliseconds ) () ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,int,int,int) ;int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*,int,int) ;} ;
struct TYPE_6__ {scalar_t__ numIndexes; } ;
struct TYPE_5__ {int /*<<< orphan*/  identityLight; int /*<<< orphan*/ * scratchImage; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (float,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 TYPE_4__* r_speeds ; 
 TYPE_3__ ri ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 TYPE_2__ tess ; 
 TYPE_1__ tr ; 

void FUNC15 (int x, int y, int w, int h, int cols, int rows, const byte *data, int client, qboolean dirty) {
	int			i, j;
	int			start, end;

	if ( !tr.registered ) {
		return;
	}
	FUNC4();

	if ( tess.numIndexes ) {
		FUNC1();
	}

	// we definitely want to sync every frame for the cinematics
	FUNC8();

	start = 0;
	if ( r_speeds->integer ) {
		start = ri.Milliseconds();
	}

	// make sure rows and cols are powers of 2
	for ( i = 0 ; ( 1 << i ) < cols ; i++ ) {
	}
	for ( j = 0 ; ( 1 << j ) < rows ; j++ ) {
	}
	if ( ( 1 << i ) != cols || ( 1 << j ) != rows) {
		ri.Error (ERR_DROP, "Draw_StretchRaw: size not a power of 2: %i by %i", cols, rows);
	}

	FUNC3 (w, h, cols, rows, data, client, dirty);
	FUNC0( tr.scratchImage[client] );

	if ( r_speeds->integer ) {
		end = ri.Milliseconds();
		ri.Printf( PRINT_ALL, "qglTexSubImage2D %i, %i: %i msec\n", cols, rows, end - start );
	}

	FUNC2();

	FUNC6( tr.identityLight, tr.identityLight, tr.identityLight );

	FUNC5 (GL_QUADS);
	FUNC9 ( 0.5f / cols,  0.5f / rows );
	FUNC10 (x, y);
	FUNC9 ( ( cols - 0.5f ) / cols ,  0.5f / rows );
	FUNC10 (x+w, y);
	FUNC9 ( ( cols - 0.5f ) / cols, ( rows - 0.5f ) / rows );
	FUNC10 (x+w, y+h);
	FUNC9 ( 0.5f / cols, ( rows - 0.5f ) / rows );
	FUNC10 (x, y+h);
	FUNC7 ();
}
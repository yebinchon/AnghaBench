#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_15__ {float val; } ;
struct TYPE_13__ {float* val; } ;
struct TYPE_14__ {TYPE_1__ size; } ;
struct TYPE_16__ {unsigned int type; int enabled; TYPE_3__ opacity; TYPE_2__ tmap; } ;
typedef  TYPE_4__ lwTexture ;

/* Variables and functions */
#define  ID_GRAD 130 
#define  ID_IMAP 129 
#define  ID_PROC 128 
 int /*<<< orphan*/  PICO_SEEK_CUR ; 
 TYPE_4__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned short,int /*<<< orphan*/ ) ; 
 unsigned short FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned short,TYPE_4__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned short,TYPE_4__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned short,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned short,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

lwTexture *FUNC10( picoMemStream_t *fp, int bloksz, unsigned int type ){
	lwTexture *tex;
	unsigned short sz;
	int ok;

	tex = FUNC0( 1, sizeof( lwTexture ) );
	if ( !tex ) {
		return NULL;
	}

	tex->type = type;
	tex->tmap.size.val[ 0 ] =
		tex->tmap.size.val[ 1 ] =
			tex->tmap.size.val[ 2 ] = 1.0f;
	tex->opacity.val = 1.0f;
	tex->enabled = 1;

	sz = FUNC3( fp );
	if ( !FUNC8( fp, sz, tex ) ) {
		FUNC1( tex );
		return NULL;
	}

	sz = bloksz - sz - 6;
	switch ( type ) {
	case ID_IMAP:  ok = FUNC6( fp, sz, tex );  break;
	case ID_PROC:  ok = FUNC7( fp, sz, tex );  break;
	case ID_GRAD:  ok = FUNC5( fp, sz, tex );  break;
	default:
		ok = !FUNC2( fp, sz, PICO_SEEK_CUR );
	}

	if ( !ok ) {
		FUNC4( tex );
		return NULL;
	}

	FUNC9( bloksz );
	return tex;
}
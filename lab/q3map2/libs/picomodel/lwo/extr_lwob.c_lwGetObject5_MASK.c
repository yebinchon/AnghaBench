#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_11__ {int nlayers; int /*<<< orphan*/  nsurfs; int /*<<< orphan*/  surf; int /*<<< orphan*/  taglist; TYPE_2__* layer; } ;
typedef  TYPE_1__ lwObject ;
typedef  int /*<<< orphan*/  lwNode ;
struct TYPE_13__ {int /*<<< orphan*/  offset; } ;
struct TYPE_12__ {int /*<<< orphan*/  polygon; TYPE_3__ point; int /*<<< orphan*/  bbox; } ;
typedef  TYPE_2__ lwLayer ;

/* Variables and functions */
 unsigned int ID_FORM ; 
 unsigned int ID_LWOB ; 
#define  ID_PNTS 131 
#define  ID_POLS 130 
#define  ID_SRFS 129 
#define  ID_SURF 128 
 int /*<<< orphan*/  PICO_SEEK_CUR ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

lwObject *FUNC17( char *filename, picoMemStream_t *fp, unsigned int *failID, int *failpos ){
	lwObject *object;
	lwLayer *layer;
	lwNode *node;
	unsigned int id, formsize, type, cksize;


	/* open the file */

	if ( !fp ) {
		return NULL;
	}

	/* read the first 12 bytes */

	FUNC16( 0 );
	id       = FUNC3( fp );
	formsize = FUNC3( fp );
	type     = FUNC3( fp );
	if ( 12 != FUNC4() ) {
		return NULL;
	}

	/* LWOB? */

	if ( id != ID_FORM || type != ID_LWOB ) {
		if ( failpos ) {
			*failpos = 12;
		}
		return NULL;
	}

	/* allocate an object and a default layer */

	object = FUNC0( 1, sizeof( lwObject ) );
	if ( !object ) {
		goto Fail;
	}

	layer = FUNC0( 1, sizeof( lwLayer ) );
	if ( !layer ) {
		goto Fail;
	}
	object->layer = layer;
	object->nlayers = 1;

	/* get the first chunk header */

	id = FUNC3( fp );
	cksize = FUNC3( fp );
	if ( 0 > FUNC4() ) {
		goto Fail;
	}

	/* process chunks as they're encountered */

	while ( 1 ) {
		cksize += cksize & 1;

		switch ( id )
		{
		case ID_PNTS:
			if ( !FUNC8( fp, cksize, &layer->point ) ) {
				goto Fail;
			}
			break;

		case ID_POLS:
			if ( !FUNC10( fp, cksize, &layer->polygon,
								  layer->point.offset ) ) {
				goto Fail;
			}
			break;

		case ID_SRFS:
			if ( !FUNC12( fp, cksize, &object->taglist ) ) {
				goto Fail;
			}
			break;

		case ID_SURF:
			node = ( lwNode * ) FUNC11( fp, cksize, object );
			if ( !node ) {
				goto Fail;
			}
			FUNC14( (void **) &object->surf, node );
			object->nsurfs++;
			break;

		default:
			FUNC1( fp, cksize, PICO_SEEK_CUR );
			break;
		}

		/* end of the file? */

		if ( formsize <= FUNC2( fp ) - 8 ) {
			break;
		}

		/* get the next chunk header */

		FUNC16( 0 );
		id = FUNC3( fp );
		cksize = FUNC3( fp );
		if ( 8 != FUNC4() ) {
			goto Fail;
		}
	}

	FUNC6( &layer->point, layer->bbox );
	FUNC9( &layer->point, &layer->polygon );
	if ( !FUNC7( &layer->point, &layer->polygon ) ) {
		goto Fail;
	}
	if ( !FUNC15( &layer->polygon, &object->taglist,
								 &object->surf, &object->nsurfs ) ) {
		goto Fail;
	}
	FUNC13( &layer->point, &layer->polygon );

	return object;

Fail:
	if ( failID ) {
		*failID = id;
	}
	if ( fp ) {
		if ( failpos ) {
			*failpos = FUNC2( fp );
		}
	}
	FUNC5( object );
	return NULL;
}
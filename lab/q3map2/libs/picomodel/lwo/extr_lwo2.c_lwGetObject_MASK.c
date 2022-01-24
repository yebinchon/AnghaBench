#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_21__ {int nlayers; int /*<<< orphan*/  nsurfs; int /*<<< orphan*/  surf; int /*<<< orphan*/  taglist; TYPE_2__* layer; int /*<<< orphan*/  nclips; int /*<<< orphan*/  clip; int /*<<< orphan*/  nenvs; int /*<<< orphan*/  env; } ;
typedef  TYPE_1__ lwObject ;
struct TYPE_23__ {int /*<<< orphan*/  offset; } ;
struct TYPE_24__ {int /*<<< orphan*/  offset; } ;
struct TYPE_22__ {struct TYPE_22__* next; int /*<<< orphan*/  vmap; TYPE_4__ polygon; TYPE_6__ point; void** bbox; int /*<<< orphan*/  nvmaps; void* parent; int /*<<< orphan*/  name; void** pivot; void* flags; void* index; } ;
typedef  TYPE_2__ lwNode ;
typedef  TYPE_2__ lwLayer ;

/* Variables and functions */
#define  ID_BBOX 141 
#define  ID_CLIP 140 
#define  ID_DESC 139 
#define  ID_ENVL 138 
 unsigned int ID_FORM ; 
#define  ID_ICON 137 
#define  ID_LAYR 136 
 unsigned int ID_LWO2 ; 
 unsigned int ID_LWOB ; 
#define  ID_PNTS 135 
#define  ID_POLS 134 
#define  ID_PTAG 133 
#define  ID_SURF 132 
#define  ID_TAGS 131 
#define  ID_TEXT 130 
#define  ID_VMAD 129 
#define  ID_VMAP 128 
 int /*<<< orphan*/  PICO_SEEK_CUR ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,void**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* FUNC12 (char*,int /*<<< orphan*/ *,unsigned int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned int,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC24 (void**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 

lwObject *FUNC27( char *filename, picoMemStream_t *fp, unsigned int *failID, int *failpos ){
	lwObject *object;
	lwLayer *layer;
	lwNode *node;
	unsigned int id, formsize, type, cksize;
	int i, rlen;

	/* open the file */

	if ( !fp ) {
		return NULL;
	}

	/* read the first 12 bytes */

	FUNC26( 0 );
	id       = FUNC6( fp );
	formsize = FUNC6( fp );
	type     = FUNC6( fp );
	if ( 12 != FUNC7() ) {
		return NULL;
	}

	/* is this a LW object? */

	if ( id != ID_FORM ) {
		if ( failpos ) {
			*failpos = 12;
		}
		return NULL;
	}

	if ( type != ID_LWO2 ) {
		if ( type == ID_LWOB ) {
			return FUNC12( filename, fp, failID, failpos );
		}
		else {
			if ( failpos ) {
				*failpos = 12;
			}
			return NULL;
		}
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

	/* get the first chunk header */

	id = FUNC6( fp );
	cksize = FUNC6( fp );
	if ( 0 > FUNC7() ) {
		goto Fail;
	}

	/* process chunks as they're encountered */

	while ( 1 ) {
		cksize += cksize & 1;

		switch ( id )
		{
		case ID_LAYR:
			if ( object->nlayers > 0 ) {
				layer = FUNC0( 1, sizeof( lwLayer ) );
				if ( !layer ) {
					goto Fail;
				}
				FUNC24( (void **) &object->layer, layer );
			}
			object->nlayers++;

			FUNC26( 0 );
			layer->index = FUNC5( fp );
			layer->flags = FUNC5( fp );
			layer->pivot[ 0 ] = FUNC3( fp );
			layer->pivot[ 1 ] = FUNC3( fp );
			layer->pivot[ 2 ] = FUNC3( fp );
			layer->name = FUNC4( fp );

			rlen = FUNC7();
			if ( rlen < 0 || rlen > cksize ) {
				goto Fail;
			}
			if ( rlen <= cksize - 2 ) {
				layer->parent = FUNC5( fp );
			}
			rlen = FUNC7();
			if ( rlen < cksize ) {
				FUNC1( fp, cksize - rlen, PICO_SEEK_CUR );
			}
			break;

		case ID_PNTS:
			if ( !FUNC15( fp, cksize, &layer->point ) ) {
				goto Fail;
			}
			break;

		case ID_POLS:
			if ( !FUNC19( fp, cksize, &layer->polygon,
								 layer->point.offset ) ) {
				goto Fail;
			}
			break;

		case ID_VMAP:
		case ID_VMAD:
			node = ( lwNode * ) FUNC22( fp, cksize, layer->point.offset,
										   layer->polygon.offset, id == ID_VMAD );
			if ( !node ) {
				goto Fail;
			}
			FUNC24( (void **) &layer->vmap, node );
			layer->nvmaps++;
			break;

		case ID_PTAG:
			if ( !FUNC18( fp, cksize, &object->taglist,
									&layer->polygon ) ) {
				goto Fail;
			}
			break;

		case ID_BBOX:
			FUNC26( 0 );
			for ( i = 0; i < 6; i++ )
				layer->bbox[ i ] = FUNC3( fp );
			rlen = FUNC7();
			if ( rlen < 0 || rlen > cksize ) {
				goto Fail;
			}
			if ( rlen < cksize ) {
				FUNC1( fp, cksize - rlen, PICO_SEEK_CUR );
			}
			break;

		case ID_TAGS:
			if ( !FUNC21( fp, cksize, &object->taglist ) ) {
				goto Fail;
			}
			break;

		case ID_ENVL:
			node = ( lwNode * ) FUNC11( fp, cksize );
			if ( !node ) {
				goto Fail;
			}
			FUNC24( (void **) &object->env, node );
			object->nenvs++;
			break;

		case ID_CLIP:
			node = ( lwNode * ) FUNC10( fp, cksize );
			if ( !node ) {
				goto Fail;
			}
			FUNC24( (void **) &object->clip, node );
			object->nclips++;
			break;

		case ID_SURF:
			node = ( lwNode * ) FUNC20( fp, cksize );
			if ( !node ) {
				goto Fail;
			}
			FUNC24( (void **) &object->surf, node );
			object->nsurfs++;
			break;

		case ID_DESC:
		case ID_TEXT:
		case ID_ICON:
		default:
			FUNC1( fp, cksize, PICO_SEEK_CUR );
			break;
		}

		/* end of the file? */

		if ( formsize <= FUNC2( fp ) - 8 ) {
			break;
		}

		/* get the next chunk header */

		FUNC26( 0 );
		id = FUNC6( fp );
		cksize = FUNC6( fp );
		if ( 8 != FUNC7() ) {
			goto Fail;
		}
	}

	if ( object->nlayers == 0 ) {
		object->nlayers = 1;
	}

	layer = object->layer;
	while ( layer ) {
		FUNC9( &layer->point, layer->bbox );
		FUNC16( &layer->point, &layer->polygon );
		if ( !FUNC13( &layer->point, &layer->polygon ) ) {
			goto Fail;
		}
		if ( !FUNC25( &layer->polygon, &object->taglist,
									 &object->surf, &object->nsurfs ) ) {
			goto Fail;
		}
		FUNC23( &layer->point, &layer->polygon );
		if ( !FUNC14( &layer->point, layer->vmap ) ) {
			goto Fail;
		}
		if ( !FUNC17( &layer->polygon, layer->vmap ) ) {
			goto Fail;
		}
		layer = layer->next;
	}

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
	FUNC8( object );
	return NULL;
}
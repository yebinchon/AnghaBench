#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {size_t cofs; size_t maxofs; int /*<<< orphan*/ * bufptr; } ;
typedef  TYPE_1__ T3dsLoaderPers ;
typedef  TYPE_2__ T3dsChunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static T3dsChunk *FUNC2( T3dsLoaderPers *pers ){
	T3dsChunk *chunk;

	/* sanity check */
	if ( pers->cofs > pers->maxofs ) {
		return 0;
	}

#ifdef DEBUG_PM_3DS
/*	printf("GetChunk: pers->cofs %x\n",pers->cofs); */
#endif
	/* fill in pointer to chunk */
	chunk = (T3dsChunk *)&pers->bufptr[ pers->cofs ];
	if ( !chunk ) {
		return NULL;
	}

	chunk->id  = FUNC1( chunk->id );
	chunk->len = FUNC0( chunk->len );

	/* advance in buffer */
	pers->cofs += sizeof( T3dsChunk );

	/* this means yay */
	return chunk;
}
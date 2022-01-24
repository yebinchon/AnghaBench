#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int bufSize; scalar_t__ flag; int /*<<< orphan*/ * curPos; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ picoMemStream_t ;
typedef  int /*<<< orphan*/  picoByte_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

picoMemStream_t *FUNC2( picoByte_t *buffer, int bufSize ){
	picoMemStream_t *s;

	/* sanity check */
	if ( buffer == NULL || bufSize <= 0 ) {
		return NULL;
	}

	/* allocate stream */
	s = FUNC0( sizeof( picoMemStream_t ) );
	if ( s == NULL ) {
		return NULL;
	}
	FUNC1( s,0,sizeof( picoMemStream_t ) );

	/* setup */
	s->buffer   = buffer;
	s->curPos   = buffer;
	s->bufSize  = bufSize;
	s->flag     = 0;

	/* return ptr to stream */
	return s;
}
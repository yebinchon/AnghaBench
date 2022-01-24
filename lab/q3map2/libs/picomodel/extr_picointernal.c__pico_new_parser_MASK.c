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
struct TYPE_5__ {int tokenMax; char* buffer; char* cursor; int bufSize; char* max; int curLine; int /*<<< orphan*/ * token; scalar_t__ tokenSize; } ;
typedef  TYPE_1__ picoParser_t ;
typedef  int /*<<< orphan*/  picoByte_t ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

picoParser_t *FUNC3( picoByte_t *buffer, int bufSize ){
	picoParser_t *p;

	/* sanity check */
	if ( buffer == NULL || bufSize <= 0 ) {
		return NULL;
	}

	/* allocate reader */
	p = FUNC0( sizeof( picoParser_t ) );
	if ( p == NULL ) {
		return NULL;
	}
	FUNC2( p,0,sizeof( picoParser_t ) );

	/* allocate token space */
	p->tokenSize = 0;
	p->tokenMax = 1024;
	p->token = FUNC0( p->tokenMax );
	if ( p->token == NULL ) {
		FUNC1( p );
		return NULL;
	}
	/* setup */
	p->buffer   = (char *)buffer;
	p->cursor   = p->buffer;
	p->bufSize  = bufSize;
	p->max      = p->buffer + bufSize;
	p->curLine = 1; /* sea: new */

	/* return ptr to parser */
	return p;
}
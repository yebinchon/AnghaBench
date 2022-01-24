#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;

/* Variables and functions */
 scalar_t__ FLEN_ERROR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 scalar_t__ flen ; 

void *FUNC3( picoMemStream_t *fp, int size ){
	void *data;

	if ( flen == FLEN_ERROR ) {
		return NULL;
	}
	if ( size < 0 ) {
		flen = FLEN_ERROR;
		return NULL;
	}
	data = FUNC0( size );
	if ( !data ) {
		flen = FLEN_ERROR;
		return NULL;
	}
	if ( 1 != FUNC2( fp, data, size ) ) {
		flen = FLEN_ERROR;
		FUNC1( data );
		return NULL;
	}

	flen += size;
	return data;
}
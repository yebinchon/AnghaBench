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

/* Variables and functions */
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/ * _pico_ptr_malloc ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 

void *FUNC3( void **ptr, size_t oldSize, size_t newSize ){
	void *ptr2;

	/* sanity checks */
	if ( ptr == NULL ) {
		return NULL;
	}
	if ( newSize < oldSize ) {
		return *ptr;
	}
	if ( _pico_ptr_malloc == NULL ) {
		return NULL;
	}

	/* allocate new pointer */
	ptr2 = FUNC0( newSize );
	if ( ptr2 == NULL ) {
		return NULL;
	}

	/* copy */
	if ( *ptr != NULL ) {
		FUNC2( ptr2, *ptr, oldSize );
		FUNC1( *ptr );
	}

	/* fix up and return */
	*ptr = ptr2;
	return *ptr;
}
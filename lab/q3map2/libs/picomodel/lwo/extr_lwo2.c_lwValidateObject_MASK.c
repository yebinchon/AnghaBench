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
 unsigned int ID_FORM ; 
 unsigned int ID_LWO2 ; 
 unsigned int ID_LWOB ; 
 int PICO_PMV_ERROR_IDENT ; 
 int PICO_PMV_ERROR_MEMORY ; 
 int PICO_PMV_ERROR_SIZE ; 
 int PICO_PMV_OK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,unsigned int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4( char *filename, picoMemStream_t *fp, unsigned int *failID, int *failpos ){
	unsigned int id, formsize, type;

	/* open the file */

	if ( !fp ) {
		return PICO_PMV_ERROR_MEMORY;
	}

	/* read the first 12 bytes */

	FUNC3( 0 );
	id       = FUNC0( fp );
	formsize = FUNC0( fp );
	type     = FUNC0( fp );
	if ( 12 != FUNC1() ) {
		return PICO_PMV_ERROR_SIZE;
	}

	/* is this a LW object? */

	if ( id != ID_FORM ) {
		if ( failpos ) {
			*failpos = 12;
		}
		return PICO_PMV_ERROR_SIZE;
	}

	if ( type != ID_LWO2 ) {
		if ( type == ID_LWOB ) {
			return FUNC2( filename, fp, failID, failpos );
		}
		else {
			if ( failpos ) {
				*failpos = 12;
			}
			return PICO_PMV_ERROR_IDENT;
		}
	}

	return PICO_PMV_OK;
}
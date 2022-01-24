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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 size_t FUNC1 (char const*) ; 

FILE *FUNC2( const char *ospath, const char *mode ) {
	size_t length;

	// Windows API ignores all trailing spaces and periods which can get around Quake 3 file system restrictions.
	length = FUNC1( ospath );
	if ( length == 0 || ospath[length-1] == ' ' || ospath[length-1] == '.' ) {
		return NULL;
	}

	return FUNC0( ospath, mode );
}
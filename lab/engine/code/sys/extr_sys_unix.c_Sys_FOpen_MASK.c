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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct stat*) ; 

FILE *FUNC3( const char *ospath, const char *mode ) {
	struct stat buf;

	// check if path exists and is a directory
	if ( !FUNC2( ospath, &buf ) && FUNC0( buf.st_mode ) )
		return NULL;

	return FUNC1( ospath, mode );
}
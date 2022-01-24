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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__* sourceFile ; 
 int sourceLine ; 
 scalar_t__* sourcePtr ; 

__attribute__((used)) static void FUNC6( const char *filename ) {
	FILE	*f;
	int		length;

	f = FUNC2( filename, "r" );
	if ( !f ) {
		FUNC5( ";couldn't open %s\n", filename );
		sourceFile = NULL;
		return;
	}
	length = FUNC1( f );
	sourceFile = FUNC4( length + 1 );
	if ( sourceFile ) {
		FUNC3( sourceFile, length, 1, f );
		sourceFile[length] = 0;
	}

	FUNC0( f );
	sourceLine = 1;
	sourcePtr = sourceFile;
}
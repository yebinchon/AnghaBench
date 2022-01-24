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
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4( const char *filename,
		const char *function )
{
	// Check if the filename ends with the library, QVM, or pk3 extension
	if( FUNC3( filename )
		|| FUNC0( filename, ".qvm" )
		|| FUNC0( filename, ".pk3" ) )
	{
		FUNC2( ERR_FATAL, "%s: Not allowed to manipulate '%s' due "
			"to %s extension", function, filename, FUNC1( filename ) );
	}
}
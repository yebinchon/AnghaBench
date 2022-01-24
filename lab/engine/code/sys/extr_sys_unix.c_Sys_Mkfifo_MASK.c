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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,struct stat*) ; 

FILE *FUNC7( const char *ospath )
{
	FILE	*fifo;
	int	result;
	int	fn;
	struct	stat buf;

	// if file already exists AND is a pipefile, remove it
	if( !FUNC6( ospath, &buf ) && FUNC1( buf.st_mode ) )
		FUNC0( ospath );

	result = FUNC5( ospath, 0600 );
	if( result != 0 )
		return NULL;

	fifo = FUNC4( ospath, "w+" );
	if( fifo )
	{
		fn = FUNC3( fifo );
		FUNC2( fn, F_SETFL, O_NONBLOCK );
	}

	return fifo;
}
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
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int MAX_THREADS ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_ADAPTIVE_NP ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_FAST_NP ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ dispatch ; 
 int numthreads ; 
 int oldf ; 
 scalar_t__ pacifier ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  threaded ; 
 int workcount ; 

void FUNC10( int workcnt, qboolean showpacifier, void ( *func )( int ) ){
	pthread_mutexattr_t mattrib;
	pthread_t work_threads[MAX_THREADS];

	int start, end;
	int i = 0;
	void *exit_value;

	start     = FUNC1();
	pacifier  = showpacifier;

	dispatch  = 0;
	oldf      = -1;
	workcount = workcnt;

	if ( numthreads == 1 ) {
		func( 0 );
	}
	else
	{
		threaded  = qtrue;

		if ( pacifier ) {
			FUNC9( stdout, NULL );
		}

		if ( FUNC6( &mattrib ) != 0 ) {
			FUNC0( "pthread_mutexattr_init failed" );
		}
#if __GLIBC_MINOR__ == 1
		if ( pthread_mutexattr_settype( &mattrib, PTHREAD_MUTEX_FAST_NP ) != 0 )
#else
		if ( FUNC7( &mattrib, PTHREAD_MUTEX_ADAPTIVE_NP ) != 0 )
#endif
		{ FUNC0( "pthread_mutexattr_settype failed" ); }
		FUNC8( mattrib );

		for ( i = 0 ; i < numthreads ; i++ )
		{
			/* Default pthread attributes: joinable & non-realtime scheduling */
			if ( FUNC3( &work_threads[i], NULL, (void*)func, (void*)(uintptr_t)i ) != 0 ) {
				FUNC0( "pthread_create failed" );
			}
		}
		for ( i = 0 ; i < numthreads ; i++ )
		{
			if ( FUNC4( work_threads[i], &exit_value ) != 0 ) {
				FUNC0( "pthread_join failed" );
			}
		}
		FUNC5( &mattrib );
		threaded = qfalse;
	}

	end = FUNC1();
	if ( pacifier ) {
		FUNC2( " (%i)\n", end - start );
	}
}
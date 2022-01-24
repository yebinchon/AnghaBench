#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_3__ {int lock; int /*<<< orphan*/  a_mutex; int /*<<< orphan*/ * owner; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ pt_mutex_t ;

/* Variables and functions */
 TYPE_1__ global_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  threaded ; 

void FUNC5( void ){
	pt_mutex_t *pt_mutex = &global_lock;

	if ( !threaded ) {
		return;
	}

	FUNC2( &pt_mutex->a_mutex );
	if ( FUNC1( FUNC4(), (pthread_t)&pt_mutex->owner ) ) {
		pt_mutex->lock++;
	}
	else
	{
		if ( ( !pt_mutex->owner ) && ( pt_mutex->lock == 0 ) ) {
			pt_mutex->owner = (pthread_t *)FUNC4();
			pt_mutex->lock  = 1;
		}
		else
		{
			while ( 1 )
			{
				FUNC0( &pt_mutex->cond, &pt_mutex->a_mutex );
				if ( ( !pt_mutex->owner ) && ( pt_mutex->lock == 0 ) ) {
					pt_mutex->owner = (pthread_t *)FUNC4();
					pt_mutex->lock  = 1;
					break;
				}
			}
		}
	}
	FUNC3( &pt_mutex->a_mutex );
}
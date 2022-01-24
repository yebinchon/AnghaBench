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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
struct TYPE_3__ {scalar_t__ lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  a_mutex; int /*<<< orphan*/ * owner; } ;
typedef  TYPE_1__ pt_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ global_lock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3( pthread_mutexattr_t attribs ){
	pt_mutex_t *pt_mutex = &global_lock;

	pt_mutex->owner = NULL;
	if ( FUNC2( &pt_mutex->a_mutex, &attribs ) != 0 ) {
		FUNC0( "pthread_mutex_init failed\n" );
	}
	if ( FUNC1( &pt_mutex->cond, NULL ) != 0 ) {
		FUNC0( "pthread_cond_init failed\n" );
	}

	pt_mutex->lock = 0;
}
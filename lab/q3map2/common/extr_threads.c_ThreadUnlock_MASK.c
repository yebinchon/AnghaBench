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
struct TYPE_3__ {scalar_t__ lock; int /*<<< orphan*/  a_mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/ * owner; } ;
typedef  TYPE_1__ pt_mutex_t ;

/* Variables and functions */
 TYPE_1__ global_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  threaded ; 

void FUNC3( void ){
	pt_mutex_t *pt_mutex = &global_lock;

	if ( !threaded ) {
		return;
	}

	FUNC1( &pt_mutex->a_mutex );
	pt_mutex->lock--;

	if ( pt_mutex->lock == 0 ) {
		pt_mutex->owner = NULL;
		FUNC0( &pt_mutex->cond );
	}

	FUNC2( &pt_mutex->a_mutex );
}
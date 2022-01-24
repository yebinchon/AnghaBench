#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cfilter; int /*<<< orphan*/  key; struct TYPE_6__* name; } ;
typedef  TYPE_1__ lwEnvelope ;
typedef  int /*<<< orphan*/  (* ListFreeFunc ) (TYPE_1__*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ lwFreePlugin ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_1__*)) ; 

void FUNC2( lwEnvelope *env ){
	if ( env ) {
		if ( env->name ) {
			FUNC0( env->name );
		}
		FUNC1( env->key, _pico_free );
		FUNC1( env->cfilter, (ListFreeFunc) lwFreePlugin );
		FUNC0( env );
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cgameStarted; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SHUTDOWN ; 
 int KEYCATCH_CGAME ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cgvm ; 
 TYPE_1__ cls ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC4( void ) {
	FUNC1( FUNC0( ) & ~KEYCATCH_CGAME );
	cls.cgameStarted = qfalse;
	if ( !cgvm ) {
		return;
	}
	FUNC2( cgvm, CG_SHUTDOWN );
	FUNC3( cgvm );
	cgvm = NULL;
}
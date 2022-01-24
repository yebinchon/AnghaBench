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
struct TYPE_2__ {scalar_t__ state; scalar_t__ demoplaying; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ clc ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC4( void ) {
	if ( clc.state != CA_ACTIVE || clc.demoplaying ) {
		FUNC3 ("Not connected to a server.\n");
		return;
	}
	
	// don't forward the first argument
	if ( FUNC1() > 1 ) {
		FUNC0(FUNC2(), qfalse);
	}
}
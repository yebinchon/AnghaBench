#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  vidHeight; int /*<<< orphan*/  vidWidth; } ;
struct TYPE_8__ {int /*<<< orphan*/  finishCalled; } ;
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_7__ {TYPE_1__ refdef; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_4__ glConfig ; 
 TYPE_3__ glState ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ tr ; 

void FUNC3( void ) {
	if ( !tr.registered ) {
		return;
	}
	FUNC1( qtrue );
	FUNC0();
	FUNC2( &glConfig );
	tr.refdef.width = glConfig.vidWidth;
	tr.refdef.height = glConfig.vidHeight;
	glState.finishCalled = qfalse;
}
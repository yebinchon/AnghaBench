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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAME_CONSOLE_COMMAND ; 
 scalar_t__ SS_GAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gvm ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_1__ sv ; 

qboolean FUNC1( void ) {
	if ( sv.state != SS_GAME ) {
		return qfalse;
	}

	return FUNC0( gvm, GAME_CONSOLE_COMMAND );
}
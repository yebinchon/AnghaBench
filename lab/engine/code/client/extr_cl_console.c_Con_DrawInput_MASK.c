#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int vislines; scalar_t__ xadjust; int /*<<< orphan*/  color; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* SetColor ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int KEYCATCH_CONSOLE ; 
 int FUNC1 () ; 
 scalar_t__ SCREEN_WIDTH ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,char) ; 
 int SMALLCHAR_HEIGHT ; 
 int SMALLCHAR_WIDTH ; 
 TYPE_3__ clc ; 
 TYPE_2__ con ; 
 int /*<<< orphan*/  g_consoleField ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__ re ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4 (void) {
	int		y;

	if ( clc.state != CA_DISCONNECTED && !(FUNC1( ) & KEYCATCH_CONSOLE ) ) {
		return;
	}

	y = con.vislines - ( SMALLCHAR_HEIGHT * 2 );

	re.SetColor( con.color );

	FUNC2( con.xadjust + 1 * SMALLCHAR_WIDTH, y, ']' );

	FUNC0( &g_consoleField, con.xadjust + 2 * SMALLCHAR_WIDTH, y,
		SCREEN_WIDTH - 3 * SMALLCHAR_WIDTH, qtrue, qtrue );
}
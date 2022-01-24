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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {int /*<<< orphan*/  (* function ) () ;int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* commands ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC3 () ; 

qboolean FUNC4( void ) {
	const char	*cmd;
	int		i;

	cmd = FUNC1(0);

	for ( i = 0 ; i < FUNC0( commands ) ; i++ ) {
		if ( !FUNC2( cmd, commands[i].cmd ) ) {
			commands[i].function();
			return qtrue;
		}
	}

	return qfalse;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* keynumToStringBuf ) (int,char*,int) ;} ;
struct TYPE_3__ {int bind1; int bind2; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 TYPE_2__* DC ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int g_bindCount ; 
 TYPE_1__* g_bindings ; 
 char* g_nameBind1 ; 
 char* g_nameBind2 ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

void FUNC6(const char *cvar) {
	int	i, b1, b2;

	// iterate each command, set its default binding
	for (i=0; i < g_bindCount; i++)
	{
		if (FUNC0(cvar, g_bindings[i].command) == 0) {
			b1 = g_bindings[i].bind1;
			if (b1 == -1) {
				break;
			}
				DC->keynumToStringBuf( b1, g_nameBind1, 32 );
				FUNC1(g_nameBind1);

				b2 = g_bindings[i].bind2;
				if (b2 != -1)
				{
					DC->keynumToStringBuf( b2, g_nameBind2, 32 );
					FUNC1(g_nameBind2);
					FUNC2( g_nameBind1, " or " );
					FUNC2( g_nameBind1, g_nameBind2 );
				}
			return;
		}
	}
	FUNC3(g_nameBind1, "???");
}
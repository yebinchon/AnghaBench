#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vmCvar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CG_CVAR_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*,int) ; 

void	FUNC1( vmCvar_t *vmCvar, const char *varName, const char *defaultValue, int flags ) {
	FUNC0( CG_CVAR_REGISTER, vmCvar, varName, defaultValue, flags );
}
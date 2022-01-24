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

/* Variables and functions */
 int /*<<< orphan*/  UI_CVAR_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char const*,int) ; 

void FUNC1( const char *var_name, const char *var_value, int flags ) {
	FUNC0( UI_CVAR_CREATE, var_name, var_value, flags );
}
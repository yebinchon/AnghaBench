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
 int /*<<< orphan*/  G_CVAR_VARIABLE_STRING_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,int) ; 

void FUNC1( const char *var_name, char *buffer, int bufsize ) {
	FUNC0( G_CVAR_VARIABLE_STRING_BUFFER, var_name, buffer, bufsize );
}
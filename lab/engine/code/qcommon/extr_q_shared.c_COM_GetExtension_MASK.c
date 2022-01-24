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
 char* FUNC0 (char const*,char) ; 

const char *FUNC1( const char *name )
{
	const char *dot = FUNC0(name, '.'), *slash;
	if (dot && (!(slash = FUNC0(name, '/')) || slash < dot))
		return dot + 1;
	else
		return "";
}
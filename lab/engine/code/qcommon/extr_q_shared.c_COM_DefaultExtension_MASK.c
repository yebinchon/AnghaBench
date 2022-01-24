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
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 char* FUNC1 (char*,char) ; 

void FUNC2( char *path, int maxSize, const char *extension )
{
	const char *dot = FUNC1(path, '.'), *slash;
	if (dot && (!(slash = FUNC1(path, '/')) || slash < dot))
		return;
	else
		FUNC0(path, maxSize, extension);
}
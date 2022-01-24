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
 char const* DEFAULT_PORT_GIT ; 
 char const* DEFAULT_PORT_HTTP ; 
 char const* DEFAULT_PORT_HTTPS ; 
 char const* DEFAULT_PORT_SSH ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC1(const char *scheme)
{
	if (FUNC0(scheme, "http") == 0)
		return DEFAULT_PORT_HTTP;
	else if (FUNC0(scheme, "https") == 0)
		return DEFAULT_PORT_HTTPS;
	else if (FUNC0(scheme, "git") == 0)
		return DEFAULT_PORT_GIT;
	else if (FUNC0(scheme, "ssh") == 0)
		return DEFAULT_PORT_SSH;

	return NULL;
}
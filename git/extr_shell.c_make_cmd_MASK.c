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
 int /*<<< orphan*/  COMMAND_DIR ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static char *FUNC1(const char *prog)
{
	return FUNC0("%s/%s", COMMAND_DIR, prog);
}
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
 int /*<<< orphan*/  informative_errors ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char const*) ; 

__attribute__((used)) static int FUNC1(const char *dir, const char *msg)
{
	if (!informative_errors)
		msg = "access denied or repository not exported";
	FUNC0(1, "ERR %s: %s", msg, dir);
	return -1;
}
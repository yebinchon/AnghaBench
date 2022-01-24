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
 int FSCK_ERROR ; 
 int FSCK_IGNORE ; 
 int FSCK_WARN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const char *str)
{
	if (!FUNC1(str, "error"))
		return FSCK_ERROR;
	else if (!FUNC1(str, "warn"))
		return FSCK_WARN;
	else if (!FUNC1(str, "ignore"))
		return FSCK_IGNORE;
	else
		FUNC0("Unknown fsck message type: '%s'", str);
}
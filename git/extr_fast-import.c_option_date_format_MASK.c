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
 int /*<<< orphan*/  WHENSPEC_NOW ; 
 int /*<<< orphan*/  WHENSPEC_RAW ; 
 int /*<<< orphan*/  WHENSPEC_RFC2822 ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  whenspec ; 

__attribute__((used)) static void FUNC2(const char *fmt)
{
	if (!FUNC1(fmt, "raw"))
		whenspec = WHENSPEC_RAW;
	else if (!FUNC1(fmt, "rfc2822"))
		whenspec = WHENSPEC_RFC2822;
	else if (!FUNC1(fmt, "now"))
		whenspec = WHENSPEC_NOW;
	else
		FUNC0("unknown --date-format argument %s", fmt);
}
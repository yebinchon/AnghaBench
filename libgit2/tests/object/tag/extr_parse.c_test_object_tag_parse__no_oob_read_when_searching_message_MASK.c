#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  message; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(void)
{
	const char *tag =
		"object a8d447f68076d1520f69649bb52629941be7031f\n"
		"type tag\n"
		"tag \n"
		"tagger <>\n"
		" \n\n"
		"Message";
	/*
	 * The OOB read previously resulted in an OOM error. We
	 * thus want to make sure that the resulting error is the
	 * expected one.
	 */
	FUNC0(tag, FUNC3(tag) - FUNC3("\n\nMessage"));
	FUNC1(FUNC4(FUNC2()->message, "tag contains no message"));
}
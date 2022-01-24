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
struct option {scalar_t__ type; char const* long_name; } ;

/* Variables and functions */
 scalar_t__ OPTION_END ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(const char *arg, const struct option *options)
{
	if (FUNC4(arg) < 3)
		return;

	if (FUNC3(arg, "no-")) {
		FUNC1(FUNC0("did you mean `--%s` (with two dashes ?)"), arg);
		FUNC2(129);
	}

	for (; options->type != OPTION_END; options++) {
		if (!options->long_name)
			continue;
		if (FUNC3(options->long_name, arg)) {
			FUNC1(FUNC0("did you mean `--%s` (with two dashes ?)"), arg);
			FUNC2(129);
		}
	}
}
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
 int PATHSPEC_GLOB ; 
 int PATHSPEC_ICASE ; 
 int PATHSPEC_LITERAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int FUNC6(int element_magic)
{
	int global_magic = 0;

	if (FUNC4())
		global_magic |= PATHSPEC_LITERAL;

	/* --glob-pathspec is overridden by :(literal) */
	if (FUNC2() && !(element_magic & PATHSPEC_LITERAL))
		global_magic |= PATHSPEC_GLOB;

	if (FUNC2() && FUNC5())
		FUNC1(FUNC0("global 'glob' and 'noglob' pathspec settings are incompatible"));

	if (FUNC3())
		global_magic |= PATHSPEC_ICASE;

	if ((global_magic & PATHSPEC_LITERAL) &&
	    (global_magic & ~PATHSPEC_LITERAL))
		FUNC1(FUNC0("global 'literal' pathspec setting is incompatible "
		      "with all other global pathspec settings"));

	/* --noglob-pathspec adds :(literal) _unless_ :(glob) is specified */
	if (FUNC5() && !(element_magic & PATHSPEC_GLOB))
		global_magic |= PATHSPEC_LITERAL;

	return global_magic;
}
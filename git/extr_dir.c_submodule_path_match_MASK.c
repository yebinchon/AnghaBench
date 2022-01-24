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
struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;

/* Variables and functions */
 int DO_MATCH_DIRECTORY ; 
 int DO_MATCH_LEADING_PATHSPEC ; 
 int FUNC0 (struct index_state const*,struct pathspec const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

int FUNC2(const struct index_state *istate,
			 const struct pathspec *ps,
			 const char *submodule_name,
			 char *seen)
{
	int matched = FUNC0(istate, ps, submodule_name,
					FUNC1(submodule_name),
					0, seen,
					DO_MATCH_DIRECTORY |
					DO_MATCH_LEADING_PATHSPEC);
	return matched;
}
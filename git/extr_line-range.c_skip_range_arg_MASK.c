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
struct index_state {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 char const* FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct index_state*) ; 

const char *FUNC2(const char *arg, struct index_state *istate)
{
	if (*arg == ':' || (*arg == '^' && *(arg + 1) == ':'))
		return FUNC1(arg, NULL, NULL,
					    0, 0, NULL, NULL,
					    NULL, istate);

	arg = FUNC0(arg, NULL, NULL, 0, -1, NULL);

	if (*arg == ',')
		arg = FUNC0(arg+1, NULL, NULL, 0, 0, NULL);

	return arg;
}
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
 int /*<<< orphan*/  GIT_LITERAL_PATHSPECS_ENVIRONMENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(void)
{
	static int literal = -1;

	if (literal < 0)
		literal = FUNC0(GIT_LITERAL_PATHSPECS_ENVIRONMENT, 0);

	return literal;
}
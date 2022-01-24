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
struct unidirectional_transfer {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ SSTATE_FINISHED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct unidirectional_transfer*) ; 
 scalar_t__ FUNC4 (struct unidirectional_transfer*) ; 
 scalar_t__ FUNC5 (struct unidirectional_transfer*) ; 

__attribute__((used)) static void *FUNC6(void *udt)
{
	struct unidirectional_transfer *t = (struct unidirectional_transfer *)udt;
	while (t->state != SSTATE_FINISHED) {
		if (FUNC1(t->state))
			if (FUNC4(t))
				return NULL;
		if (FUNC2(t->state))
			if (FUNC5(t))
				return NULL;
		if (FUNC0(t->state))
			FUNC3(t);
	}
	return udt;	/* Just some non-NULL value. */
}
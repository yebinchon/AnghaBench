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
 int /*<<< orphan*/  FUNC0 (struct index_state*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct index_state*) ; 

__attribute__((used)) static void FUNC3(struct index_state *istate)
{
	switch (FUNC1()) {
	case -1: /* unset: do nothing */
		break;
	case 0: /* false */
		FUNC2(istate);
		break;
	case 1: /* true */
		FUNC0(istate);
		break;
	default: /* unknown value: do nothing */
		break;
	}
}
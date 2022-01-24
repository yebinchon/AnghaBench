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
struct TYPE_2__ {int idle; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_PURR ; 
 TYPE_1__* FUNC0 () ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(unsigned long *in_purr)
{
	FUNC2();
	*in_purr = FUNC1(SPRN_PURR);
	/*
	 * Indicate to the HV that we are idle. Now would be
	 * a good time to find other work to dispatch.
	 */
	FUNC0()->idle = 1;
}
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
struct xive_cpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ TM_QW1_OS ; 
 scalar_t__ TM_WORD0 ; 
 scalar_t__ TM_WORD1 ; 
 scalar_t__ TM_WORD2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ xive_tima ; 

__attribute__((used)) static void FUNC2(unsigned int cpu, struct xive_cpu *xc)
{
	/* Only some debug on the TIMA settings */
	FUNC1("(HW value: %08x %08x %08x)\n",
		 FUNC0(xive_tima + TM_QW1_OS + TM_WORD0),
		 FUNC0(xive_tima + TM_QW1_OS + TM_WORD1),
		 FUNC0(xive_tima + TM_QW1_OS + TM_WORD2));
}
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
 int STBCR_MSTP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int STBCR_RESET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(unsigned int cpu)
{
	FUNC2(STBCR_MSTP, FUNC0(cpu));
	while (!(FUNC1(FUNC0(cpu)) & STBCR_MSTP))
		FUNC3();
	FUNC2(STBCR_RESET, FUNC0(cpu));
}
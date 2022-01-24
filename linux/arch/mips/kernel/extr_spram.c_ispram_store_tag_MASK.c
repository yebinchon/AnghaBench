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
 unsigned int CKSEG0 ; 
 int /*<<< orphan*/  ERRCTL_SPRAM ; 
 int /*<<< orphan*/  Index_Store_Tag_I ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(unsigned int offset, unsigned int data)
{
	unsigned int errctl;

	/* enable SPRAM tag access */
	errctl = FUNC0(ERRCTL_SPRAM);
	FUNC2();

	FUNC4(data);
	FUNC2();

	FUNC1(Index_Store_Tag_I, CKSEG0|offset);
	FUNC2();

	FUNC3(errctl);
	FUNC2();
}
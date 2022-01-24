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
 int /*<<< orphan*/  Index_Load_Tag_I ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC5(unsigned int offset)
{
	unsigned int data;
	unsigned int errctl;

	/* enable SPRAM tag access */
	errctl = FUNC0(ERRCTL_SPRAM);
	FUNC2();
	FUNC1(Index_Load_Tag_I, CKSEG0 | offset);
	FUNC2();
	data = FUNC3();
	FUNC2();
	FUNC4(errctl);
	FUNC2();

	return data;
}